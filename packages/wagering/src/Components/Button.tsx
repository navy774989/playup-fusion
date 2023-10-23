import { Pressable, Text } from 'react-native';

const Button = () => {
  return (
    <Pressable
      onPress={() => {
        console.log('Lazy Button Pressed');
      }}
    >
      <Text>Lazy Button</Text>
    </Pressable>
  );
};
export default Button;
