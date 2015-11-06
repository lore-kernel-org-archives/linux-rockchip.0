From: Shunqian Zheng <zhengsq@rock-chips.com>
Subject: Re: [PATCH v3 1/2] ASoC: codec: Inno codec driver for RK3036 SoC
Date: Fri, 06 Nov 2015 19:35:11 +0800
Message-ID: <563C906F.8020502@rock-chips.com>
References: <1446799162-15635-1-git-send-email-zhengsq@rock-chips.com> <1446799162-15635-2-git-send-email-zhengsq@rock-chips.com> <20151106104541.GC18409@sirena.org.uk>
Reply-To: zhengsq@rock-chips.com
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20151106104541.GC18409@sirena.org.uk>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Brown <broonie@kernel.org>
Cc: robh+dt@kernel.org, pawel.moll@arm.com, mark.rutland@arm.com, ijc+devicetree@hellion.org.uk, galak@codeaurora.org, heiko@sntech.de, lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, benzh@chromium.org, benchan@google.com, kmixter@google.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Mark,

On 2015=E5=B9=B411=E6=9C=8806=E6=97=A5 18:45, Mark Brown wrote:
> On Fri, Nov 06, 2015 at 04:39:21PM +0800, Shunqian Zheng wrote:
>
>> +	SOC_ENUM("Anti-pop", rk3036_codec_antipop_enum),
> As discussed this shouldn't be an enum.
Sure, I'll write the .get/.put/.info() for this.
Here is the preview of it.
Do you think the following is good to go?

static int rk3036_codec_antipop_info(struct snd_kcontrol *kcontrol,
                                      struct snd_ctl_elem_info *uinfo)
{
         uinfo->type =3D SNDRV_CTL_ELEM_TYPE_BOOLEAN;
         uinfo->count =3D 2;
         uinfo->value.integer.min =3D 0;
         uinfo->value.integer.max =3D 1;

         return 0;
}

static int rk3036_codec_antipop_get(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
         struct snd_soc_component *component =3D snd_kcontrol_chip(kcon=
trol);
         int val, ret, regval;


         ret =3D snd_soc_component_read(component, INNO_R09, &regval);
         if (ret)
                 return ret;
         val =3D ((regval >> INNO_R09_HPL_ANITPOP_SHIFT) &
                INNO_R09_HP_ANTIPOP_MSK) =3D=3D INNO_R09_HP_ANTIPOP_ON;
         ucontrol->value.integer.value[0] =3D val;

         val =3D ((regval >> INNO_R09_HPR_ANITPOP_SHIFT) &
                INNO_R09_HP_ANTIPOP_MSK) =3D=3D INNO_R09_HP_ANTIPOP_ON;
         ucontrol->value.integer.value[1] =3D val;

         return 0;
}

static int rk3036_codec_antipop_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
         struct snd_soc_component *component =3D snd_kcontrol_chip(kcon=
trol);
         int val, ret, regmsk;

         val =3D (ucontrol->value.integer.value[0] ?
                INNO_R09_HP_ANTIPOP_ON : INNO_R09_HP_ANTIPOP_OFF ) <<
               INNO_R09_HPL_ANITPOP_SHIFT;
         val |=3D (ucontrol->value.integer.value[1] ?
                 INNO_R09_HP_ANTIPOP_ON : INNO_R09_HP_ANTIPOP_OFF ) <<
                INNO_R09_HPR_ANITPOP_SHIFT;

         regmsk =3D INNO_R09_HP_ANTIPOP_MSK << INNO_R09_HPL_ANITPOP_SHI=
=46T |
                  INNO_R09_HP_ANTIPOP_MSK << INNO_R09_HPR_ANITPOP_SHIFT=
;

         ret =3D snd_soc_component_update_bits(component, INNO_R09,
                                             regmsk, val);
         if (ret < 0)
                 return ret;

         return 0;
}

#define SOC_RK3036_CODEC_ANTIPOP_DECL(xname) \
{       .iface =3D SNDRV_CTL_ELEM_IFACE_MIXER, .name =3D xname, \
         .info =3D rk3036_codec_antipop_info, .get =3D=20
rk3036_codec_antipop_get, \
         .put =3D rk3036_codec_antipop_put, }


Thank you very much,
Shunqian
