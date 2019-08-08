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


   'Import React-Native':
     'prefix': 'irnd'
     'body': "import { ${1} } from 'react-native';"


   'React-Native Text and View':
     'prefix': 'irn'
     'body': """
              import {
               View,
               Text
              } from 'react-native';"""

####################### React Native Stuff ##########################

   'React-Native Class':
     'prefix': 'rc'
     'body': """
               class $1 extends Component {
                 render() {
                   return (
                     <View style={styles.rootContainer}>
                       $2
                     </View>
                   )
                 }
               }
               export default $1;"""

   'RN Text':
     'prefix': 'tx'
     'body': """<Text style={styles.textContainer}>
                  $1
                </Text>"""

   'RN View':
     'prefix': 'vi'
     'body': """<View style={styles.ViewContainer}>
                 $1
               </View>"""

   'RN height %':
     'prefix': 'hp'
     'body': """hp('$1%')"""

   'RN width %':
     'prefix': 'wp'
     'body': """wp('$1%')"""

   'RN setState':
     'prefix': 'ss'
     'body': """this.setState({
                 $1
               })"""

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

   'Component Did Mount':
     'prefix': 'cdm'
     'body': """ componentDidMount() {
                  $1
                }"""

   'Component will Mount':
     'prefix': 'cwm'
     'body': """ componentWillMount() {
                 $1
               }"""

   'Component will Un-Mount':
     'prefix': 'cwu'
     'body': """ componentWillUnMount() {
                $1
              }"""

   'Component did Un-Mount':
     'prefix': 'cdu'
     'body': """ componentDidUnMount() {
             $1
           }"""
################### Graphql Stuff #############################

   'graphql export':
     'prefix': 'exg'
     'body': "export default graphql($1)($2);"


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

   'contentContainerStyle':
    'prefix': 'cc'
    'body': '''
            contentContainerStyle
           '''

########################### eslint stuf f########################
   'ESlint disalble line':
    'prefix': 'dl'
    'body': "// eslint-disable-line"

   'background':
    'prefix': 'bac'
    'body': "background: $1"

########################## utility stuff  f######################

   'Big Comment line':
    'prefix': 'bc'
    'body': "// ####################################################"

########################## hooks stuff  f######################

   'useEffect':
    'prefix': 'eff'
    'body': "useEffect(() => {
      $1
    });"

   'setState':
    'prefix': 'ss'
    'body': "const [ $1, set$1] = useState(null)"
