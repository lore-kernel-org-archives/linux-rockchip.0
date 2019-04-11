From: Nicolas Dufresne <nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org>
Subject: Re: [PATCH v3 1/9] staging: video: rockchip: add v4l2 decoder
Date: Thu, 11 Apr 2019 12:12:49 -0400
Message-ID: <88dc2edc5e6146d4dc0a8367b5bbe9aaa6241d0b.camel@ndufresne.ca>
References: <20190410124226.8612-1-ayaka@soulik.info>
 <20190410124226.8612-2-ayaka@soulik.info>
 <2b225e07b03359311c21ab2b3c41096a97beb338.camel@ndufresne.ca>
 <cc5816d8-43cb-aedc-e496-f92baf37e6b3@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============7672308825431661637=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <cc5816d8-43cb-aedc-e496-f92baf37e6b3-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Randy Li <randy.li-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, maxime.ripard-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, joro-zLv9SwRftAIdnm+yROfE0A@public.gmane.org, ayaka <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>, jernej.skrabec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, groeck-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, posciak-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org


--===============7672308825431661637==
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-zjlg6Ecl6t7mB6EBykWt"


--=-zjlg6Ecl6t7mB6EBykWt
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le jeudi 11 avril 2019 =C3=A0 09:29 +0800, Randy Li a =C3=A9crit :
> > We agreed with Maxime and Ezequiel that there will be two distinct
> > format, V4L2_PIX_FMT_H264_SLICE_RAW and V4L2_PIX_FMT_H264_SLICE_ANNEXB.
> > And user-pace will take care of providing the right information.
>=20
> I have no idea on what does the SLICE_RAW mean here.

If you skip the NAL headers, SLICE_RAW is what is left. This is exactly
what is passed in VAAPI, and what makes Rockchip HW difficult to
support through this abstraction apparently. The rationale is that all
the information that was in the rest of the bitstream is already passed
in C structures. If this isn't the case, let me know, since it would be
a bad name indeed.

Paul asked us why not always required ANNEX-B with start code as a
super set. This is not very efficient, since it means that whenever you
have a stream from an ISOMP4 media, you endup having to convert the AVC
headers into ANNEX-B start code, and you loose the optimization the AVC
header provides (AVC format is basically just a NAL type and it's size,
so you can navigate through the stream with very little reads). The
other thing is the memory alignment the require needs. I suspect that
if the HW require SLICE_RAW, you cannot just pass a random pointer
offset. So you'd need another buffer the userspace data to. Hidden
copies in drivers are quite bad, it's better to leave it to userspace
when we can in my opinion.

Now that I'm saying that out-loud, I wonder how the "one v4l2 buffer
per frame" restriction can be respected for SLICE_RAW. The receiver
would have no way to know where each slices are. Isn't there a big flaw
in this restriction ? Or did I miss-understood the format, and
SLICE_RAW is a bad name ?

>=20
> Annex B describe a byte stream format but it doesn't mean it should =20
> ship slice data with SPS or PPS

SLICE means it won't pass SPS or PPS in-band. Only slice NALs and per
slice auxiliary data if there is any. Do Rockchip needs the original
SPS/PPS bitstream ? If so, all of them ? or just the activated one ?
And when ?

>=20
> The problem of bootlin demo is it follows Annex B but withou a start=20
> code !!!!

We'll fix that if we decide to use this for testing. It was all early
and unspecified. SLICE_ANNEXB will have a start code of course, as I
don't see how you can call this ANNEXB otherwise. And I'm pretty sure
the reason Rockchip need it is to be able to split the slices (we need
to keep in mind that multiple slices per frame is commonly used in
video conference streaming). The format documentation should be really
clear about what it is, and if another HW with another format comes
that does not match, it should define and document a new format.

cheers,
Nicolas

--=-zjlg6Ecl6t7mB6EBykWt
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQSScpfJiL+hb5vvd45xUwItrAaoHAUCXK9ngQAKCRBxUwItrAao
HLcFAJ4xsAhrKMIo3LOrqn1XOJOwkTWUwgCcDDyTmU6DTwrOUowmM78Ob4VxrP8=
=tBIX
-----END PGP SIGNATURE-----

--=-zjlg6Ecl6t7mB6EBykWt--



--===============7672308825431661637==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7672308825431661637==--
