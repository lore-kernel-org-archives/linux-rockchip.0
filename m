Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68163CA0EE0
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Aug 2025 17:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+xonVY6PZ4CgPJHAM9dPDWMOsnkF3xrxFYnIWEy5gus=; b=IIA8nxtR7GxtYJVQpMvN5h2UCg
	iItcbFD0AeO04qgzLTqh+bKEoxrLL4j4qSLuPGrsbzVe00GnSB+dXHLebd+usSnVslPqD0AhNp4ZT
	x4mFvYkVeRu8FxuP2L0PWjwv/+xg9MqGLdteKufI85G+MtV9TdLESjyL8zBIk2O49h1YPYjuW+7hU
	MQK0PkwXsMYpWWczpLRNm0JYTIGw6CZ5/fq6ov8nV7r+Xky24ZKWlKDmgvhF/j2YRXuRx8HUj3UVx
	4ypqDb43ALFf36JwH39zyrgBYqSCLvNNlhVg2433tpgVjh63+o7hwqSs/EKAAbm22E8YYzlHBDSJn
	eeOqGftA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulsqJ-0000000BZn8-229h;
	Tue, 12 Aug 2025 17:31:23 +0000
Received: from out-179.mta0.migadu.com ([2001:41d0:1004:224b::b3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uloY0-0000000Aqir-1Lcp
	for linux-rockchip@lists.infradead.org;
	Tue, 12 Aug 2025 12:56:13 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1755003359;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=2/K6Kmzeo0smswqH+INF7WIXwUm2J6GEj868GD/UacY=;
	b=rM2CPcxknPD2SbRacMWMBVPBBCQsqxe9vhib0K7Ko9FjPHBdJCGtjs27Uf4U+77CUquUmP
	rvGUkmHsQAPvPYxkLhE8EzUwvLWl52zW4IZViPkgTusRrjtBQAI6Q+ZvN/RDuSxlRiNbvI
	m2u7o3GV+nJUg17UlbNMTOL/eoV5GhMccl0lqnmlJopNW6whQoYTLsHfTXWQ508wOqr81y
	IVdCP+XPljYFGizwMvtlqGCBa5+QgHQTXVaTeESrk8Ih9u+HrCxvnkuM1B3VfmiBzToWTX
	vZqBHP2hC37Ou5OGWDKd/tmvBJp6MUOTD9R3H0cJG1+qwpl8y9wBOtInoEVSDg==
Date: Tue, 12 Aug 2025 14:55:49 +0200
Message-Id: <DC0GRKB9V014.1J7A2PO1B7U8H@cknow.org>
Cc: "Alex Bee" <knaerzche@gmail.com>, "Nicolas Dufresne"
 <nicolas.dufresne@collabora.com>, <linux-media@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 0/7] media: rkvdec: Add HEVC backend
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Diederik de Haas" <didi.debian@cknow.org>, "Jonas Karlman"
 <jonas@kwiboo.se>, "Ezequiel Garcia" <ezequiel@vanguardiasur.com.ar>,
 "Detlev Casanova" <detlev.casanova@collabora.com>, "Mauro Carvalho Chehab"
 <mchehab@kernel.org>
References: <20250810212454.3237486-1-jonas@kwiboo.se>
 <DC0FTXJNW0KB.3I8DLNHJVL21O@cknow.org>
In-Reply-To: <DC0FTXJNW0KB.3I8DLNHJVL21O@cknow.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_055612_498631_FC6CFF44 
X-CRM114-Status: GOOD (  16.96  )
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
Content-Type: multipart/mixed; boundary="===============4234155070977148653=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============4234155070977148653==
Content-Type: multipart/signed;
 boundary=5eb61e0f6c0eadb653b8d59c45a8a0be8243b30f21a6b0198e575406c8d8;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--5eb61e0f6c0eadb653b8d59c45a8a0be8243b30f21a6b0198e575406c8d8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi again,

On Tue Aug 12, 2025 at 2:11 PM CEST, Diederik de Haas wrote:
> On Sun Aug 10, 2025 at 11:24 PM CEST, Jonas Karlman wrote:
>> This series add a HEVC backend to the Rockchip Video Decoder driver.
>>
>> Patch 1 add the new HEVC backend.
>> Patch 2-3 add variants support to the driver.
>> Patch 4 add support for a rk3288 variant.
>> Patch 5 add a rk3328 variant to work around hw quirks.
>> Patch 6-7 add device tree node for rk3288.
>
> It looks like I had a previous version of linuxtv-rkvdec-hevc-v2 branch
> locally and that also had this commit:
> - media: rkvdec: Keep decoder clocks gated
>
> Is that one no longer needed/useful/etc ?
>
> And 'chewitt' also had a commit to fix 8/10-bit selection:
> https://github.com/chewitt/linux/commit/4b93b05d2ca608bc23f1d52bcc32df926=
d435c7c
> "WIP: media: rkvdec: fix 8-bit/10-bit format selection"
>
> I haven't tried that one (yet), but did  try an other variant with
> changing the ordering in rkvdec_hevc_decoded_fmts but that didn't work
> in my tests. (Can ofc be PEBKAC)
>
> Would that be useful? I do/did have consistent problems with playing
> 10-bit encoded video files.

nvm about the 10-bit problem. It exists, but it's not restricted to HEVC
as it also exists with with H.264 files.

Cheers,
  Diederik

--5eb61e0f6c0eadb653b8d59c45a8a0be8243b30f21a6b0198e575406c8d8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaJs51wAKCRDXblvOeH7b
bjcHAP9PnLzGZY1YCKcprzz/K1OPRxwql59MG2CCmBYwRNgpggD/cJPqV7R+iPpd
9qCnahBvk5X3jrA0jqxwYVblCkJpgAc=
=bXI1
-----END PGP SIGNATURE-----

--5eb61e0f6c0eadb653b8d59c45a8a0be8243b30f21a6b0198e575406c8d8--


--===============4234155070977148653==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4234155070977148653==--

