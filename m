From: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH v2 2/2] usb: dwc2: host: Clear interrupts before handling
 them
Date: Thu, 19 Nov 2015 12:19:14 -0600
Message-ID: <877fldg8d9.fsf@saruman.tx.rr.com>
References: <1446582629-30091-1-git-send-email-dianders@chromium.org>
 <1446582629-30091-2-git-send-email-dianders@chromium.org>
 <87wpthnc2e.fsf@saruman.tx.rr.com>
 <CAD=FV=W-UWJnHZioChnVmPmJQXxMGGOUQiF81h0ZTA4invivVA@mail.gmail.com>
 <2B3535C5ECE8B5419E3ECBE30077290901DC3D696B@US01WEMBX2.internal.synopsys.com>
 <CAD=FV=WSypaenJcRjhneAkcW=K5J-q-+c7L2=vJj5YAoGaFncw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============6954745225913876333=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAD=FV=WSypaenJcRjhneAkcW=K5J-q-+c7L2=vJj5YAoGaFncw-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: "Herrero, Gregory" <gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "Kaukab,
 Yousaf" <yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Dinh Nguyen <dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

--===============6954745225913876333==
Content-Type: multipart/signed; boundary="=-=-="; micalg=pgp-sha1;
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> writes:
>>>> isn't this a regression ? You're first clearing the interrupts and only
>>>> then reading to check what's pending, however, what's pending has just
>>>> been cleared. Seems like this should be:
>>>>
>>>> hprt0 =3D dwc2_readl(HPRT0);
>>>> dwc2_writeal(PRTINT, GINTSTS);
>>>
>>> Actually, we could probably remove the setting of GINTSTS_PRTINT
>>> completely.  The docs I have say that the GINTSTS_PRTINT is read only
>>> and that:
>>>
>>>> The core sets this bit to indicate a change in port status of one of t=
he
>>>> DWC_otg core ports in Host mode. The application must read the
>>>> Host Port Control and Status (HPRT) register to determine the exact
>>>> event that caused this interrupt. The application must clear the
>>>> appropriate status bit in the Host Port Control and Status register to
>>>> clear this bit.
>>>
>>> ...so writing PRTINT is probably useless, but John can confirm.
>>>
>>
>> Yup, it seems it can be removed.
>
> How do you guys want this handled?  Should I send up a new version of
> this patch?  ...or should I send a followon patch that does this
> removal?

I'll leave the final decision to John, but my opinion is that a new
version of the patch would be preferrable.

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWThKiAAoJEIaOsuA1yqRE1ekQAKYj764iLKBN/Lk5l+iMLUDf
jrCSCk0DmMtbVwmvsrU0XdZe3MEtnU1iFGpznGAMLHd1qv93b5L3S/zU8+5WMDJB
i4Mzg7gq/WrRWBXQRysZ+2WujOQI2zmWeggmtY9dye3DU8pEMy5tTJF+tU652nVl
djO968MeXmdhXa/KEnaIe5+ehUnXpfPhavtv2gPDeNEsE5tv9I9u12+VbTbp82Em
g3077mPBt1KmntVMa4wJNFxHD7wwHygpfoSZozeLHkbPv0GlvMq80+yElJRl+dIb
iECASFSdI8gOsgfTu5urPCQTB61a9FlWjEo1BYQykUkvZIpu/5CQW7lG3ilpod3X
6zwNyI2FdB7BBE/k0Zm6RACzKgLN0vTJgkC0Ov3l+3isakI5SMPTath1fdxXCgoA
rYGWKBt6gZeXvYVP7h4698uA7/TjabRS23IIlpAP4K7SB4QK1AUPUg+NjmFtxOqO
o2LY9Oy6E3YLBGo9EPq4kTNe9HG0zK7Eu4X+NDDbyAPjbkChObv407nAnGXGGaWp
Q1oSnzvH5f+El+kYMU26BVwgQ2dW3ryOYwU3uly68khFxaxsMv68HPUg1N1zH9fo
T53YyLH4Tdl68Q+fRJSrMDQTpstxNP2mvngfSmbfzukRFFkpFrph1HsUpAap/xFl
xblFbdSbtt+jnOrEyOfs
=4W8F
-----END PGP SIGNATURE-----
--=-=-=--


--===============6954745225913876333==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6954745225913876333==--
