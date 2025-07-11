Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77E8FC83F1A
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jul 2025 20:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RQpvqt0w6+z2m6DC1KChQLlT+nUdnqWi0OFfXpg9aNk=; b=kYZ8EmgYFV7OMreKQL7wBOLHs+
	DjmCJNtPKO7STFc7MhTtQKIVLnG1TYBfgmF+tJHkT3tq2U+J4gifPci5rVI+2weCs4GWmWICl5n9U
	CGhng2FaNHXTDomJ2waJ5TGQ5gZMevU/KhXyziGYleG03dTvrO6uKGVSYsPDtIhSj7dA2hcKo5Zxb
	02O/yp1oykaRFauQB+pvLP1e4/0K6P8I6LZv4dhtON6fz9wB1urOrJMR4dTlTXz3BbYkiF44TiUjQ
	NnZCkYTEPW65nanHtEi0PR1PTAF7lqNbOJNZyK7nfbHvExDRex33IwuYCP+vlyYZr9fJI8WSCSCua
	aqIykSDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaKeu-0000000Fp2a-2JLv;
	Fri, 11 Jul 2025 20:47:52 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaJti-0000000FkIG-0qDv
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Jul 2025 19:59:07 +0000
Received: by mail-qk1-x72a.google.com with SMTP id af79cd13be357-7d3f5796755so220887485a.1
        for <linux-rockchip@lists.infradead.org>; Fri, 11 Jul 2025 12:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1752263945; x=1752868745; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=KggEA/YDHTi+B94iHR0d5HwR3sGfFH/eH/dYBbqHvU0=;
        b=XDexn7tuGvqlAgJTbrUCpyDiUO8J+SWDhdr+Q7yDXWb6iiIIH7Kc/cXvnuhdSUSaFX
         AYDOzzJjO0WvRxX3S13rN8Sq4tvqinmW7kjTsAdZgrvPQa08tRsxLaRkMcFemMp78Xm2
         2s1tNmuwVni24Uo7xc8eJPQFd8C7jAe7RogQZw8EfUIzG0u6+bPhSAVK81tDiv+M++Ui
         GXm4kAa+mkE68zV+E9XlS2gDQYDGyp3aaLXLp0sSXKuiP2/wJUsWJ1rCWdz1GetKSiMS
         2bQR8+Eq7HbQOTJDayO4wqZMgEh7ctjTERKCwqq1LZDIdTLvDZhNJO5klVfKfee/0klo
         agdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752263945; x=1752868745;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KggEA/YDHTi+B94iHR0d5HwR3sGfFH/eH/dYBbqHvU0=;
        b=sA3Fm9H5ngCfu2NW0P2Hk8rnGEb5UTkE8IeZvOTrowt/G6P3mJ8msC6s9znE2ij39q
         35OGDMVni2SdKZjLC1yPRtG7K0biYd2gMHXsINULvMD3CMgAMPL6PbmpfwSX1vtDoUN6
         Jr9dQhWaTdJkpGTMerExdajh0GxrpH9oEWQcYfUfuUEn/pvWz7CFeFECohOfR+JuyVVh
         oWomzvBQo3dcl848dS0TAwM7736VDTw/eJ3pES7h9RryhDNyEuHjf4jJyYU2zaOc6V2I
         lLrXo6Fdj6zmSTgRkH+KaaS7hq7bGfZ/F240sYlPVS7Eilk6rsfvKVH3uHYmQdRJ7aeu
         ro4w==
X-Forwarded-Encrypted: i=1; AJvYcCWvthU+imaGAbTnFuChMyf+VSJKLf5k5OPExXHK7oHXbeZi2dPB2oVL9qF3UVF/VOn5gYrvzjozbSQ7ZniQxQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YytUj1NgdPqXyDtYiDHv1F5N0FmgOa5uGJXsR6GdCC9gzBJGjHz
	pDPOSU2+0FgAEY+Ekhn6m7TePNdGJHvSvxF9fSXKF/dr/35cQIbSl9oOkJPjC80paK8=
X-Gm-Gg: ASbGnctnBQqd0QeeMpjBt1bhkuDlQlL2Zft8Y6IjwMrk8gEH/gI9j4apjDrOsrdtrr0
	Gy1dgmc56BbLS025+cPbyj9QZifjg0wPj1hzFrjQbMVBtkF6lhN3edi8CE1DO5JGnlVBE76AkuN
	93wejxNqM1+ayQmCxlJR+jlnLzyb9PUILArqV5LiqoPvoV43aU9ufk0dQPk/1UaPde6uzaqcVo3
	cdb75ok+Utawt+8lDN2xH1sg0BeNHBlZeJqM96uKyLPrD3VwiuQI/RM08xAxhvBlfJUydhAKRgK
	jz1SzI9yeNL3G4QpkLZxCQ5eBIc81EOsIrKMSY2mlFvufncU9D8ge+rdjaebHauzHf0etSuONtJ
	YQSVe1diRZcBK9m1kU5TLdAkVG7k=
X-Google-Smtp-Source: AGHT+IEMN28GIL2fj0mSdcwNMNRsi58DvX91WQKhdFH3bBY+HPq8y10Ik8GGOtDgnbxn+L/FmEEnxg==
X-Received: by 2002:a05:620a:6590:b0:7e0:892b:e447 with SMTP id af79cd13be357-7e0892bec92mr129076085a.22.1752263944593;
        Fri, 11 Jul 2025 12:59:04 -0700 (PDT)
Received: from ?IPv6:2606:6d00:17:b699::5ac? ([2606:6d00:17:b699::5ac])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7dcde80650asm252765185a.90.2025.07.11.12.59.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jul 2025 12:59:03 -0700 (PDT)
Message-ID: <9f4a00b3a0b6491b1f50c878cb18569009a4441e.camel@ndufresne.ca>
Subject: Re: [PATCH 5/8] media: uapi: HEVC: Add v4l2_ctrl_hevc_ext_sps_rps
 control
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Detlev Casanova <detlev.casanova@collabora.com>, 
	linux-kernel@vger.kernel.org
Date: Fri, 11 Jul 2025 15:59:01 -0400
In-Reply-To: <20250623160722.55938-6-detlev.casanova@collabora.com>
References: <20250623160722.55938-1-detlev.casanova@collabora.com>
	 <20250623160722.55938-6-detlev.casanova@collabora.com>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0MU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT6ImQQTFg
 oAQQIbAwULCQgHAgIiAgYVCgkICwIEFgIDAQIeBwIXgBYhBO8NUoEVxMPCGgRvEtlBlFEpYHL0BQJ
 oLLLGBQkJZfd1AAoJENlBlFEpYHL0BEkA/3qkWYt99myYFSmTJUF8UB/7OroEm3vr1HRqXeQe9Qp2
 AP0bsoAe6KjEPa/pJfuJ2khrOPPHxvyt/PBNbI5BYcIABLQnTmljb2xhcyBEdWZyZXNuZSA8bmljb
 2xhc0BuZHVmcmVzbmUuY2E+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AWIQ
 TvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyy+AUJCWX3dQAKCRDZQZRRKWBy9FJ5AQCNy8SX8DpHbLa
 cy58vgDwyIpB89mok9eWGGejY9mqpRwEAhHzs+/n5xlVlM3bqy1yHnAzJqVwqBE1D0jG0a9V6VQI=
User-Agent: Evolution 3.56.2 (3.56.2-1.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_125906_354006_918C9BD2 
X-CRM114-Status: GOOD (  19.12  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>, Hans Verkuil <hverkuil@xs4all.nl>, kernel@collabora.com, Dragan Simic <dsimic@manjaro.org>, Rob Herring <robh@kernel.org>, Yunke Cao <yunkec@google.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Frank Wang <frank.wang@rock-chips.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-arm-kernel@lists.infradead.org, Jianfeng Liu <liujianfeng1994@gmail.com>, Alexey Charkov <alchark@gmail.com>, Ricardo Ribalda <ribalda@chromium.org>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Hans de Goede <hansg@kernel.org>
Content-Type: multipart/mixed; boundary="===============8582906680549291015=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8582906680549291015==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-QFZNUyCQD9CH6UQ+5gcH"


--=-QFZNUyCQD9CH6UQ+5gcH
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le lundi 23 juin 2025 =C3=A0 12:07 -0400, Detlev Casanova a =C3=A9crit=C2=
=A0:
> Some hardware (e.g.: Rockchip's rk3588 hevc decoder) need the parsed
> long and short term reference information for HEVC decoding.
>=20
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
> =C2=A0.../media/v4l/ext-ctrls-codec-stateless.rst=C2=A0=C2=A0 | 73 ++++++=
+++++++++++++
> =C2=A0.../media/v4l/vidioc-queryctrl.rst=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 6 ++
> =C2=A02 files changed, 79 insertions(+)
>=20
> diff --git a/Documentation/userspace-api/media/v4l/ext-ctrls-codec-statel=
ess.rst b/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.r=
st
> index 0da635691fdcb..745f38a8fe69c 100644
> --- a/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.rst
> +++ b/Documentation/userspace-api/media/v4l/ext-ctrls-codec-stateless.rst
> @@ -2958,6 +2958,79 @@ This structure contains all loop filter related pa=
rameters. See sections
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - 0x00000004
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -
> =C2=A0
> +.. c:type:: v4l2_ctrl_hevc_ext_sps_rps
> +
> +.. cssclass:: longtable
> +
> +.. flat-table:: struct v4l2_ctrl_hevc_ext_sps_rps
> +=C2=A0=C2=A0=C2=A0 :header-rows:=C2=A0 0
> +=C2=A0=C2=A0=C2=A0 :stub-columns: 0
> +=C2=A0=C2=A0=C2=A0 :widths:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 1 2


Something, somewhere should say this is an array.

> +
> +=C2=A0=C2=A0=C2=A0 * - __u16
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - ``lt_ref_pic_poc_lsb_sps``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Long term reference picture order count=
 as described in section 7.4.3.2.1
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "General sequence parameter s=
et RBSP semantics" of the specification.

Each LONG term reference have one of these.

> +=C2=A0=C2=A0=C2=A0 * - __u8
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - ``delta_idx_minus1``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Specifies the delta compare to the inde=
x. See details in section 7.4.8 "Short-term
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 reference picture set semanti=
cs" of the specification.


And each SHORT term have one of these. How can both be int he same control =
? For
me this could make a bit more sense with two structures:

	v4l2_ctrl_hevc_ext_sps_st_rps[]
	v4l2_ctrl_hevc_ext_sps_lt_rps[]

Did I miss something ?

> +=C2=A0=C2=A0=C2=A0 * - __u8
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - ``delta_rps_sign``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Sign of the delta as specified in secti=
on 7.4.8 "Short-term reference picture set
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 semantics" of the specificati=
on.
> +=C2=A0=C2=A0=C2=A0 * - __u16
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - ``abs_delta_rps_minus1``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Absolute delta RPS as specified in sect=
ion 7.4.8 "Short-term reference picture set
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 semantics" of the specificati=
on.
> +=C2=A0=C2=A0=C2=A0 * - __u8
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - ``num_negative_pics``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Number of short-term RPS entries that h=
ave picture order count values less than the
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 picture order count value of =
the current picture.
> +=C2=A0=C2=A0=C2=A0 * - __u8
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - ``num_positive_pics``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Number of short-term RPS entries that h=
ave picture order count values greater than the
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 picture order count value of =
the current picture.
> +=C2=A0=C2=A0=C2=A0 * - __u8
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - ``used_by_curr_pic_s0[16]``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Specifies if short-term RPS i (that has=
 a negative POC) is used by the current picture.

Use bit field for that, a __u16 works, and one per ST.

>=20
> +=C2=A0=C2=A0=C2=A0 * - __u8
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - ``used_by_curr_pic_s1[16]``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Specifies if short-term RPS i (that has=
 a positive POC) is used by the current picture.
>=20

Same.

> +=C2=A0=C2=A0=C2=A0 * - __s32
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - ``delta_poc_s0[16]``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Specifies the negative picture order co=
unt delta for the i-th entry in the short-term RPS.
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 See details in section 7.4.8 =
"Short-term reference picture set semantics" of the
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 specification.

Keep it delta_poc_s0_minus1 like int he spec, and then you can go back so u=
16.

> +=C2=A0=C2=A0=C2=A0 * - __s32
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - ``delta_poc_s1[16]``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Specifies the positive picture order co=
unt delta for the i-th entry in the short-term RPS.
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 See details in section 7.4.8 =
"Short-term reference picture set semantics" of the
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 specification.

Same.


regards,
Nicolas

> +=C2=A0=C2=A0=C2=A0 * - __u8
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - ``flags``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - See :ref:`Extended RPS Flags <hevc_ext_=
sps_rps_flags>`
> +
> +.. _hevc_ext_sps_rps_flags:
> +
> +``Extended SPS RPS Flags``
> +
> +.. cssclass:: longtable
> +
> +.. flat-table::
> +=C2=A0=C2=A0=C2=A0 :header-rows:=C2=A0 0
> +=C2=A0=C2=A0=C2=A0 :stub-columns: 0
> +=C2=A0=C2=A0=C2=A0 :widths:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 1 2
> +
> +=C2=A0=C2=A0=C2=A0 * - ``V4L2_HEVC_EXT_SPS_RPS_FLAG_USED_LT``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - 0x00000001
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Specifies if the long-term reference pi=
cture is used 7.4.3.2.1 "General sequence parameter
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 set RBSP semantics" of the sp=
ecification.
> +=C2=A0=C2=A0=C2=A0 * - ``V4L2_HEVC_EXT_SPS_RPS_FLAG_INTER_REF_PIC_SET_PR=
ED``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - 0x00000002
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Specifies if the short-term RPS is pred=
icted from another short term RPS. See details in
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 section 7.4.8 "Short-term ref=
erence picture set semantics" of the specification.
> +
> =C2=A0.. _v4l2-codec-stateless-av1:
> =C2=A0
> =C2=A0``V4L2_CID_STATELESS_AV1_SEQUENCE (struct)``
> diff --git a/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst b=
/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
> index 3549417c7febb..dc7caf4bf6208 100644
> --- a/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
> +++ b/Documentation/userspace-api/media/v4l/vidioc-queryctrl.rst
> @@ -523,6 +523,12 @@ See also the examples in :ref:`control`.
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - n/a
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - A struct :c:type:`v4l2_ctrl_hevc_d=
ecode_params`, containing HEVC
> =C2=A0	decoding parameters for stateless video decoders.
> +=C2=A0=C2=A0=C2=A0 * - ``V4L2_CTRL_TYPE_HEVC_EXT_SPS_RPS``
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - n/a
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - n/a
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - n/a
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - A struct :c:type:`v4l2_ctrl_hevc_ext_sp=
s_rps`, containing HEVC
> +	extended RPS for stateless video decoders.
> =C2=A0=C2=A0=C2=A0=C2=A0 * - ``V4L2_CTRL_TYPE_VP9_COMPRESSED_HDR``
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - n/a
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - n/a

--=-QFZNUyCQD9CH6UQ+5gcH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHQEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaHFtBQAKCRDZQZRRKWBy
9ISzAPidxCwdhetQDnozQ9rkv6zHmwuNG2/63/iuwoWBzkyQAQD7SLIPvi5xterW
wf+MjUZIrzLCUQ4C8voHcQLpGbHPCA==
=sK20
-----END PGP SIGNATURE-----

--=-QFZNUyCQD9CH6UQ+5gcH--


--===============8582906680549291015==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8582906680549291015==--

