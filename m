Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13339D1AD33
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 09:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:Subject:Cc:To:From:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1grY+kGhZ5pryHK90OTiMBZoB1g+wK6TpsaPKdLxIVc=; b=mBDnNnBKxapSLc9gauQ4lHaElF
	3R1l8uOauIKazykptEGSQwyTfqnODjo6ZNMX/PgfaMfR9NOWaYdDGKKPHk/XV1whIT8BMB4hpfX32
	Wg0dFZ8dTSlZBcpY8jedhHDYtdtsWOXRktSwF3Ll4IDOMaxrGKzjxkGR3EP5Tzdi38QdmGWljh3xl
	F9RrT7MaiCsRf+msj8nWjuqolGRBCkTz8NVkR9DrQpyVPlSdB+nVNG++uGDwRgsvgmQouJRb/6+nL
	ecNeUfg5OG7JG9j/1bfMk41URkhS3XUnwteuXFa+wYpRwVAqZJki1pSH6z+ef7eRJ7UqrM70THJSt
	BNpvFh5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t10GH-0000000BDfV-0ACm;
	Wed, 16 Oct 2024 09:24:09 +0000
Received: from out-181.mta0.migadu.com ([91.218.175.181])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t10DB-0000000BD04-38cZ
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Oct 2024 09:21:00 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1729070451;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ASnhTiI9Zj4VlqH3e6Vrg804fSxhSb+KIGUHBuAcIbI=;
	b=dTwXUxgwWOSp/7cSq8f+Q9BrSVJvBcZpuWiRO/C0MuMXqKEy65LUdMFhyugjkPuiaKQX+J
	XjcYVNA0Y2k03FXkPsghIoowCYUlgBDrEoW4XEybvokiVsAyLuVorWOxlD7DHgIii2hniw
	CDLA70L/+bDiZRl/Kc/vXFA5BHJ3ZMNeccgsSOae5TJhiwckMViYuMGOaR7C9NI4RUIQ5Y
	Ufy0KDNdklLmEWtzDW3b9g/PTcscWmYM25j4SQR720pEorD03PNfCcxsCTtzMlc6A1j7Xe
	RfEUbXtSqypKLmD1EW8n6id4Q4C+7a/TNvnUNyZYAY/4umYI49rl3u8DB5c3cQ==
Date: Wed, 16 Oct 2024 11:20:39 +0200
Message-Id: <D4X4BE9PTJ1Q.2TDYBLWRFYMYA@cknow.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Piotr Zalewski" <pZ010001011111@proton.me>, "Andy Yan"
 <andyshrk@163.com>
Cc: <hjc@rock-chips.com>, <heiko@sntech.de>, <andy.yan@rock-chips.com>,
 <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
 <tzimmermann@suse.de>, <airlied@gmail.com>, <simona@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <skhan@linuxfoundation.org>, "Daniel Stone" <daniel@fooishbar.org>, "Dragan
 Simic" <dsimic@manjaro.org>
Subject: Re: [PATCH v5] rockchip/drm: vop2: add support for gamma LUT
References: <20241014222022.571819-4-pZ010001011111@proton.me>
 <7b45f190.452f.1928e41b746.Coremail.andyshrk@163.com>
 <o_Cyz_ARcHj4zNlovv75MBwslIRhn3YWlscoNrlpLVobh7eWIMEQR5bNv0yhHx2KEx_gbYi_gH-8Y-CdvRZs9lZscz3-lhAbM50GXUdtSKY=@proton.me> <30940542.b36d.19290215124.Coremail.andyshrk@163.com> <1974DYrs9gLrQrZ5VwCglFgKDDK686iyqnS_g6uPB-s9wZ_4CqfZXPjmYWihLgrkRu7ptNjpkFeqB0uTt73RFId6cL8FowQ8LFltPmaKCoI=@proton.me> <1ae9f15d.e52.19292e05e73.Coremail.andyshrk@163.com> <QvjHFQ4xeCu-8Isrm_jtNRWLowVNFzC8qnHJ6LUGI2iFTTJoEK8fBrXjG9LUrn5Wt9fJ9F04ukEf-koifwCR0uH9nr0AelyiWI85KASNkOQ=@proton.me>
In-Reply-To: <QvjHFQ4xeCu-8Isrm_jtNRWLowVNFzC8qnHJ6LUGI2iFTTJoEK8fBrXjG9LUrn5Wt9fJ9F04ukEf-koifwCR0uH9nr0AelyiWI85KASNkOQ=@proton.me>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_022058_258223_7C2C3452 
X-CRM114-Status: UNSURE (   4.93  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============0755005561363912325=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============0755005561363912325==
Content-Type: multipart/signed;
 boundary=39b5e2c23b7ab15aaaaca0434076be4b6e0bbab25d73def0f3a97a2bb909;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--39b5e2c23b7ab15aaaaca0434076be4b6e0bbab25d73def0f3a97a2bb909
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Wed Oct 16, 2024 at 11:16 AM CEST, Piotr Zalewski wrote:
> I will rework it to[1] and test it. (Have to check if hdmi out on pt2 wor=
ks).

Last time I tried it, hdmi out did work.

--39b5e2c23b7ab15aaaaca0434076be4b6e0bbab25d73def0f3a97a2bb909
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZw+FbAAKCRDXblvOeH7b
bjJ/AP9HFSyCMdeIZVb5Xx2YLeCvCLYIdCd+0plBVEZMy44IyQEA7w7WGs8+Eh2X
6nE2wlGoI5H/WUG0o0By0qK9bgse/gs=
=BmBs
-----END PGP SIGNATURE-----

--39b5e2c23b7ab15aaaaca0434076be4b6e0bbab25d73def0f3a97a2bb909--


--===============0755005561363912325==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0755005561363912325==--

