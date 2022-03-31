Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08A3FC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Mar 2022 15:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QtnnUZbDgPjL0BLKdX3T4THIuZqJglYcMIm3NvG/QHk=; b=En53GHvX0lQxrE
	Kiujq5NkkHANsYfqwBqP+wvvLyTsdNYjQDuU1i1dpvCIgg4fsZV8wPQNcr7dXByKQnkdg6IisN27c
	+SCTaju+cAv8fhci98TPetDKJRiOfYK1GOhDEvkT69HrbfTAWgYznB/h4J1N6QwwNy468r9WG6qtY
	QG9ctDMN6walOG9kGJffCfV43UHETxGHr31UFS+o+QLwypDVugAmPV4OMPj+s+C/Yft+nUNhFAJsT
	2f4OxAkDyahlYFxF0FvYxE7LHBHu8jEy9y/vkw7wTtA/QHJM29tDs0+vngXFIQLWLiFUypc0sHFgH
	eK4kB06OYX7pf8087Slg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZwZt-002hf2-Vb; Thu, 31 Mar 2022 15:19:14 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZwZr-002hdO-UB; Thu, 31 Mar 2022 15:19:13 +0000
Received: by mail-lf1-x133.google.com with SMTP id d5so42109095lfj.9;
 Thu, 31 Mar 2022 08:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=I/zFD1UzYETukb9hPPQb6Vt1PfX3xGeKdTnoCcvEcdM=;
 b=qD1VG8gVzb0EQphdwGkUIE/ZCRoYKB8DLWm5mNbseSwOSW/IIIRQ67VHKNEQ7xStq6
 WUfjNUxp2EHzpmqNAOnHqZ1TNIUaTkl94CgW4p8FKyZ6Q905TMGfMsw9xK2v4yw+Kywv
 BjHcKNQzRaDYkSrW/0P217hlUUW4atYwpA6pAD2/8MsH9wOaiysZi5CuKK/tX7/TtWNO
 NVKN1pZIpbhU+qsCYVQIi90lEv6KqkQMpPrVqauF9kiOTonWkkPEr9u23QxewbShgwOZ
 ALEY10Fk0PXmg56J+MAJ9jUX5yXsU/EQFWBZgws5Hzg3G4aSulqT5lvu9SsSULAAR5ea
 yn0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=I/zFD1UzYETukb9hPPQb6Vt1PfX3xGeKdTnoCcvEcdM=;
 b=GZIOzNYFhpINg3NcLTFW+OgLcLbZSlXJeSQ3pRfMSegZZ3DZ5HfklnTWT/aA/HVJRW
 7ZkbvYplKDTEoH6wMVrzrgfEa7BGSeYm3u54etkYTJDaf6lOprnswWK/QzGNzcWgF51l
 NCk8xvwyizJPUFSVApm2QHSQurhaIEFfbRdTAn3pA9eedkO/agl0GHozo9dwnOrrv3mx
 F2GymcGEZ/wiYXbTKz5XxIYM1c1Ji8mTaRJ48TS4Uvmn46DXmmf5QfxDRnV8FJp+Gv69
 zSvE+D0Fi9sLX8Swt5ew/Uc4thjONCrjgpOigOJgg20B+hm90ZpEm0z5rcfDiW3gWHcd
 TJWg==
X-Gm-Message-State: AOAM532RO0YmXsprYYmuUvf2rzSb5I3WqaEVP4n0L86kEX1VrSFBrnyu
 gbUhqnnu+W1JDYaK2G6sDGM=
X-Google-Smtp-Source: ABdhPJyb/hrz6sQk0Vkca3U6ltTtxT0GjKK1mM9iqrHNcQIkEAcz5q9CA5B5t06ac/PGapOpjw7hpQ==
X-Received: by 2002:a05:6512:3d9f:b0:44a:4960:5b79 with SMTP id
 k31-20020a0565123d9f00b0044a49605b79mr11090759lfv.413.1648739944644; 
 Thu, 31 Mar 2022 08:19:04 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245]) by smtp.gmail.com with ESMTPSA id
 u2-20020a197902000000b00448a4a7cfc3sm2695712lfc.136.2022.03.31.08.19.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 31 Mar 2022 08:19:04 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <3A5C5A71-0CE0-4072-9502-75385C1C43F7@gmail.com>
Date: Thu, 31 Mar 2022 17:19:03 +0200
Cc: Andy Yan <andy.yan@rock-chips.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Message-Id: <C06076CC-DA33-40DC-A443-15254E7F784E@gmail.com>
References: <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220330072822.GX12181@pengutronix.de>
 <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
 <20220330094556.GZ12181@pengutronix.de>
 <D3DA14F9-C9C6-4927-B015-5B7D25689DAA@gmail.com>
 <20220330102046.GA12181@pengutronix.de>
 <60601619-EF07-457B-91F2-64FEB598FEBE@gmail.com>
 <20220330192054.GA4012@pengutronix.de>
 <af8445e0-f4af-721b-709e-2eb7c488a8a4@rock-chips.com>
 <B7CD9D55-9F2D-42F4-9D04-17C6A5FEBB08@gmail.com>
 <20220331150056.GH4012@pengutronix.de>
 <3A5C5A71-0CE0-4072-9502-75385C1C43F7@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_081911_997962_AFE6423B 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFBpb3RyIE9uaXN6Y3p1ayA8cGlvdHIub25p
c3pjenVrQGdtYWlsLmNvbT4gdyBkbml1IDMxLjAzLjIwMjIsIG8gZ29kei4gMTc6MDY6Cj4gCj4g
Cj4gCj4+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBw
ZW5ndXRyb25peC5kZT4gdyBkbml1IDMxLjAzLjIwMjIsIG8gZ29kei4gMTc6MDA6Cj4+IAo+PiAK
Pj4gSGF2ZSB5b3UgYXBwbGllZCB0aGUgYnVnZml4IEkgc2hhcmVkIHdpdGggeW91IGhlcmU6Cj4+
IAo+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1hcm0ta2VybmVsLzIwMjIwMzMwMDcy
ODIyLkdYMTIxODFAcGVuZ3V0cm9uaXguZGUvCj4+IAo+IAo+IG9vb29wcwo+IAo+IG5vb29vb28K
PiBkaWRuJ3Qgbm90aWNlZCA6LSgKPiAKPiBsZXQgbWUgdHJ5IHdpdGggaXQhCj4gCgpvayAtIGkg
dHJpZWQuCnVuZm9ydHVuYXRlbHkgbm8gYW55IGRpZmZlcmVuY2UgOi0oCgoKCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
