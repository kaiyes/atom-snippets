####################### imort Stuff ##########################
 '.source.js':
   'Import react':
     'prefix': 'ir'
     'body': "import React from 'react';"

   'import React Component':
     'prefix': 'irc'
     'body': "import React, { Component } from 'react';"

   'empty Import':
     'prefix': 'i'
     'body': "import ${2} from '${1}';"


   'Import React-Native-element':
     'prefix': 'ie'
     'body': "import { $1 } from 'react-native-elements';"


   'import destructured':
     'prefix': 'id'
     'body': "import {${2}} from '${1}';"

   'React-Native Text and View':
     'prefix': 'irn'
     'body': """
              import {
               View,
               Text,
               ${1}
              } from 'react-native';"""

####################### React Native Stuff ##########################

   'RN Text':
     'prefix': 'tx'
     'body': """<Text style={styles.$1}>
                  $2
                </Text>"""

   'RN View':
     'prefix': 'vi'
     'body': """<View style={styles.$1}>
                 $2
               </View>"""

   'RN height %':
     'prefix': 'hp'
     'body': """hp('$1%')"""

   'RN width %':
     'prefix': 'wp'
     'body': """wp('$1%')"""

   'RN FlatList':
     'prefix': 'fl'
     'body': """
          <FlatList
            contentContainerStyle={{ alignSelf: 'stretch' }}
            data={data.$1}
            keyExtractor={item => item._id}
            renderItem={this._renderItem}
          />"""

   'RN Shadow':
     'prefix': 'sh'
     'body': """
    shadowColor: '#000',
    shadowOffset: {
      width: 0,
      height: 4,
    },
    shadowOpacity: 0.37,
    shadowRadius: 7.49,
    elevation: 12,"""

####################### React Life Cycle ####################

################### Graphql Stuff #############################

   'graphql export':
     'prefix': 'exg'
     'body': "export default graphql($1)($2);"

   'import hooks':
     'prefix': 'ih'
     'body': "import { useMutation, useQuery } from '@apollo/react-hooks'"


   'async resolver':
    'prefix': 'ar'
    'body': '''
            $1: async (_, $2, { user }) => {
             await requireAuth(user);
             const $3 = await $4.find({ $5: $6 });
             return $3;
           },
           }'''


################### ES6 Stuff #############################

   'export default':
    'prefix': 'edd'
    'body': '''
           export default {
             $1
           }'''


   'only export':
    'prefix': 'ed'
    'body': '''
           export  {
              $1
           }'''


   'export':
    'prefix': 'ex'
    'body': "export default $1;"

   'map':
    'prefix': 'ma'
    'body': "map(
      (item, index) => {
        return ($1)
      })"

   'async function':
    'prefix': 'asf'
    'body': "async function $1() {
        $2
      }"

################### Element Stuff #############################

   'Button Element UI':
     'prefix': 'bt'
     'body': """
           <Button
             raised
             fontSize={20}
             fontWeight={'700'}
             icon={{ name: '$1', type: '$2', size: 25 }}
             buttonStyle={{ backgroundColor: '$3', borderRadius: 20 }}
             textStyle={{ textAlign: 'center' }}
             title={'$4'}
             onPress={() => $5}
           />
           """

################### RN StyleSheet Stuff #########################

   'StyleSheet':
    'prefix': 'st'
    'body': '''
          const styles = StyleSheet.create({
            rootContainer: {
              flex: 1,
              backgroundColor: '#ecf0f1',
            },
            $1
          });
           '''


   'container style':
    'prefix': 'ct'
    'body': '''
              $1: {
                $2: $3,
              },
           '''

   'center stuff':
    'prefix': 'cen'
    'body': '''
            justifyContent: 'center',
            alignItems: 'center'
           '''

   'center web stuff':
    'prefix': 'cent'
    'body': '''
            display: flex;
            justify-content: center;
            align-items: center;
           '''

   'contentContainerStyle':
    'prefix': 'cc'
    'body': '''
            contentContainerStyle
           '''

   'hotpink':
    'prefix': 'pink'
    'body': "background: hotpink"

########################### eslint stuf f########################
   'ESlint disalble line':
    'prefix': 'dl'
    'body': "// eslint-disable-line"

   'background Color':
    'prefix': 'bac'
    'body': "backgroundColor: $1"

########################## utility stuff  f######################

   'Big Comment line':
    'prefix': 'bc'
    'body': "// ####################################################"



########################## hooks stuff  f######################

   'useEffect':
    'prefix': 'uf'
    'body': "useEffect(() => {
      $1
    });"

   'useState':
    'prefix': 's'
    'body': "const [ $1, set$2] = useState($3);"

########################## APOLLO_HOOKS ######################
   'useQuery':
    'prefix': 'uq'
    'body': "const { data, loading, error } = useQuery($1)"

   'useMutation':
    'prefix': 'um'
    'body': "const [$1] = useMutation($2)"

   'useContext':
    'prefix': 'uc'
    'body': "const { $1 } = useContext($2)"


########################## Styled Components ######################
   'import wp':
    'prefix': 'iwp'
    'body': '''
            import {
              widthPercentageToDP as wp,
              heightPercentageToDP as hp }
            from 'react-native-responsive-screen'

           '''
########################## Prettier ######################
   'prttier ignore':
    'prefix': 'ig'
    'body': "// prettier-ignore"


   'use focus Effect':
    'prefix': 'ufe'
    'body': "import { useFocusEffect } from '@react-navigation/native'"
