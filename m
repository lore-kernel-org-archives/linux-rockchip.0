Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28431C001DE
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jul 2023 06:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/FrCa8nlFT5nUHgEsblRg82jonBVw1I0f4fORpGr8Ec=; b=sS84bBY0JLPaTZ
	vT+GlBZ+Vp4l/uvzEIfXlYM58aEU422L0kMVSDrG2Xz2OgLhYa/ZDmrYEoTHX1F8w/4UwonXNvYMb
	YlTr3Ae+ttHWobS11tMucjocheC9+DUbPiDntW3Zxeuuj+d/oXUiOP6aGYZQXLndnM4YeD6dAuFdK
	sLfNhhYOeANoOnWRtAiWcbY10lid5LG8Kt27Xd1vi15sjAtImo9P4sZ59WbAwKgPdPNMfD9es1cHt
	7lLAyX/wT8XLRekbCq71yMv/qzeK519zn5FMZqAiKlQgJ2AkEfiYQxsAipkKanJFwImGMxaBQWLXP
	xauj+Qt5m8YlarunG8aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJq6W-0028ZD-2v;
	Thu, 13 Jul 2023 06:47:08 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJq6T-0028X8-36
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Jul 2023 06:47:07 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-315adee6ac8so475323f8f.2
        for <linux-rockchip@lists.infradead.org>; Wed, 12 Jul 2023 23:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689230822; x=1691822822;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZDXRZ/E9io/51ukbLFISpRHZSMAt3CAsusimpt3aOJ0=;
        b=Y2TgwIcpW0GqU2VbKjQAsG2KFmUQpWcwvXEXNuJ6lsWeayFiZTSrj4IfIO8+EYOCnK
         Gs4WcbzE1N9+9N+NWfSBBg6lXMqgPqM/ozQXThnRdqmJxeeSYBRR9ZOhCfXjK1/ghD/C
         2jIVuUHEKaFCH/bOzsQ6UPnvI9+ulKSXqSts/H0HyXZVcw6Jp03vv3oryA2uheQmnjee
         4Wc9UkRZRCyyu3j41EcLtEtdMBtli0zmlF3xeIm1GV+mOLW1zNQGSeayCsr74Zkckh1N
         h1FueLXrFBmE0SxjRIR8ZeG2h86TnAHvk3hwcA+ZUSaULVRORUuPbVWTClnVbgHMxsnt
         OOGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689230822; x=1691822822;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZDXRZ/E9io/51ukbLFISpRHZSMAt3CAsusimpt3aOJ0=;
        b=Qs9GdlrMoSSg6ETtW2I/m/sQPsQxJnaTfhOfHxNGp4fTEx5r6kOlijtPzQ1VtBpuJn
         FylAYLnoo3yEt9DD3dwPBuCxz97c4Pcvxpowe1QfXuobkatYdg1Umz4OoYpNXsfvBCrB
         F2FNvEbRFAuDpPXZbSpgh+9RxvnFPqZbyrzB9cLeT0HvA/jM29KKiF0ljpp6NefMwr5K
         8hw/Kq7xr1gZu88KJ/sbhYyKutjfK4nSf8fTAhozuDC38YLkMbwugUzMO5MTv7HxvNzd
         Jt+kf/a9RUTvjCy6A9Vg82gG4np6gNu1YKNsg+rFy1YbURec0Pvdj9fLanH+1MD9GocW
         P9HQ==
X-Gm-Message-State: ABy/qLYCDQrJ5HK1Z7aVy9vPFOobABELXhogxoKec5etUhvfBAgEZ2Ka
	TuMcgTJtDJPEY0zJcIrvIyshfA==
X-Google-Smtp-Source: APBJJlH81v8zuibmeCPcWRJ4UoBAP0+rpVBJJvKoujWGteihPBYQ8w1aAtLN/pbTLVkcmOj/G6M4mA==
X-Received: by 2002:a5d:42cb:0:b0:311:142d:5d97 with SMTP id t11-20020a5d42cb000000b00311142d5d97mr604664wrr.31.1689230822204;
        Wed, 12 Jul 2023 23:47:02 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id i16-20020adffdd0000000b0030fb4b55c13sm7005237wrs.96.2023.07.12.23.46.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jul 2023 23:47:01 -0700 (PDT)
Message-ID: <ce217ae6-6dd5-26ea-2ce7-95d97ef791c4@linaro.org>
Date: Thu, 13 Jul 2023 08:46:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 01/28] media: cec: ch7322: drop of_match_ptr for ID table
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Sakari Ailus <sakari.ailus@iki.fi>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: Joe Tessler <jrt@google.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jacopo Mondi <jacopo+renesas@jmondi.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Rui Miguel Silva <rmfrfs@gmail.com>, Wenyou Yang
 <wenyou.yang@microchip.com>, Bin Liu <bin.liu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Houlong Wei <houlong.wei@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Patrice Chotard <patrice.chotard@foss.st.com>,
 Yong Deng <yong.deng@magewell.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 "Lad, Prabhakar" <prabhakar.csengg@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sean Young <sean@mess.org>,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
 <98a77653-ec58-56c4-9893-3b424f67c87e@linaro.org>
 <5afcec8b-b8f6-35b0-278a-5de185e4a7a2@xs4all.nl>
 <ZG9XJCD98VWjGjTN@valkosipuli.retiisi.eu>
 <ZG9ger4WE2VWoVEF@valkosipuli.retiisi.eu>
 <158425ec-86e8-ca3e-eed8-e14b37c42730@linaro.org>
In-Reply-To: <158425ec-86e8-ca3e-eed8-e14b37c42730@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230712_234706_000362_26B1CB02 
X-CRM114-Status: GOOD (  19.98  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMTkvMDYvMjAyMyAxNjoxMywgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiAyNS8w
NS8yMDIzIDE1OjE5LCBTYWthcmkgQWlsdXMgd3JvdGU6Cj4+IEhpIGZvbGtzLAo+Pgo+PiBPbiBU
aHUsIE1heSAyNSwgMjAyMyBhdCAwMzo0MDowNFBNICswMzAwLCBTYWthcmkgQWlsdXMgd3JvdGU6
Cj4+PiBIaSBIYW5zLAo+Pj4KPj4+IE9uIFNhdCwgTWF5IDEzLCAyMDIzIGF0IDExOjU3OjMzQU0g
KzAyMDAsIEhhbnMgVmVya3VpbCB3cm90ZToKPj4+PiBPbiAxMi8wNS8yMDIzIDE4OjM1LCBLcnp5
c3p0b2YgS296bG93c2tpIHdyb3RlOgo+Pj4+PiBPbiAxMi8wMy8yMDIzIDE0OjEyLCBLcnp5c3p0
b2YgS296bG93c2tpIHdyb3RlOgo+Pj4+Pj4gVGhlIGRyaXZlciBjYW4gbWF0Y2ggb25seSB2aWEg
dGhlIERUIHRhYmxlIHNvIHRoZSB0YWJsZSBzaG91bGQgYmUgYWx3YXlzCj4+Pj4+PiB1c2VkIGFu
ZCB0aGUgb2ZfbWF0Y2hfcHRyIGRvZXMgbm90IGhhdmUgYW55IHNlbnNlICh0aGlzIGFsc28gYWxs
b3dzIEFDUEkKPj4+Pj4+IG1hdGNoaW5nIHZpYSBQUlAwMDAxLCBldmVuIHRob3VnaCBpdCBtaWdo
dCBub3QgYmUgcmVsZXZhbnQgaGVyZSkuCj4+Pj4+Pgo+Pj4+Pj4gICBkcml2ZXJzL21lZGlhL2Nl
Yy9pMmMvY2g3MzIyLmM6NTgzOjM0OiBlcnJvcjog4oCYY2g3MzIyX29mX21hdGNo4oCZIGRlZmlu
ZWQgYnV0IG5vdCB1c2VkIFstV2Vycm9yPXVudXNlZC1jb25zdC12YXJpYWJsZT1dCj4+Pj4+Pgo+
Pj4+Pj4gU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxv
d3NraUBsaW5hcm8ub3JnPgo+Pj4+Pj4gLS0tCj4+Pj4+Cj4+Pj4+IEhhbnMsIFNha2FyaSwKPj4+
Pj4KPj4+Pj4gQ2FuIHlvdSBwaWNrIHVwIHRoZSBwYXRjaHNldD8gVGhlcmUgd2FzIHBvc2l0aXZl
IGZlZWRiYWNrOgo+Pj4+PiBodHRwczovL3BhdGNod29yay5saW51eHR2Lm9yZy9wcm9qZWN0L2xp
bnV4LW1lZGlhL3BhdGNoLzIwMjMwMzEyMTMxMzE4LjM1MTE3My0xLWtyenlzenRvZi5rb3psb3dz
a2lAbGluYXJvLm9yZy8KPj4+Pj4KPj4+Pj4gYnV0IGl0IHNlZW1zIGl0IHdhcyBub3QgYXBwbGll
ZC4KPj4+Pgo+Pj4+IEkgc2VlIGl0IGlzIGRlbGVnYXRlZCB0byBTYWthcmkgaW4gcGF0Y2h3b3Jr
IGFuZCBtYXJrZWQgVW5kZXIgUmV2aWV3LCBidXQgSSBkb24ndAo+Pj4+IHNlZSBhIGNvcnJlc3Bv
bmRpbmcgcHVsbCByZXF1ZXN0IGZvciB0aGlzIHNlcmllcy4KPj4+Pgo+Pj4+IFNha2FyaSwgZGlk
IHNvbWV0aGluZyBnbyB3cm9uZz8KPj4+Cj4+PiBJIHNwb3R0ZWQgdGhpcyBhcyBIYW5zIG5vdGlm
aWVkIG1lIGluIElSQywgSSB3YXNuJ3QgY2MnZC4gQXBvbG9naWVzIGZvcgo+Pj4gdGhpcyAtLS0g
SSBpbnRlbmRlZCB0byB0YWtlIHRoZXNlIGJ1dCBJIHRoaW5rIEkgbXVzdCBoYXZlIG1pc3NlZCBz
b21ldGhpbmcKPj4+IGltcG9ydGFudCBpbiB0aGUgcHJvY2Vzcy4gSSdsbCB0YWtlIHRoZW0gbm93
Lgo+Pj4KPj4+IFRoYW5rcy4KPj4KPj4gVGhpcyBubyBsb25nZXIgYXBwbGllZCBjbGVhbmx5LiBN
b3N0bHkgdGhlcmUgd2FzIGZ1enogbmVhciAub2ZfbWF0Y2hfdGFibGUKPj4gY2hhbmdlcyBhcyBw
cm9iZV9uZXcgKGFuZCByZW1vdmVfbmV3PykgY2hhbmdlcyBoYXZlIGJlZW4gcmVjZW50bHkgbWVy
Z2VkLgo+PiBUaGVyZSB3ZXJlIG90aGVyIGlzc3VlcyBhcyB3ZWxsLCBJIG1hcmtlZCBhIGZldyBw
YXRjaGVzIGluIHRoZSBzZXQgIm5vdAo+PiBhcHBsaWNhYmxlIiBhcyBvdGhlciBwYXRjaGVzIGhh
ZCBhbHJlYWR5IGRvbmUgZXF1aXZhbGVudCBjaGFuZ2VzIGVhcmxpZXIuCj4+Cj4+IFRoZXJlIHdl
cmUgc3Vic3RhbmNlLWNoYW5naW5nIGNoYW5nZXMgaW4gdGhlIDIwdGggcGF0Y2gsIHJlcGxpZWQg
dG8gdGhlCj4+IGRpc3VjY3Npb24gdGhlcmUuCj4+Cj4+IEkndmUgcHVzaGVkIHRoZSByZXN1bHQg
aGVyZSBhbmQgaW50ZW5kIHRvIHNlbmQgUFIgdG8gTWF1cm8gc29vbiBpZiB0aGVyZQo+PiBhcmUg
bm8gaXNzdWVzOgo+Pgo+PiA8VVJMOmh0dHBzOi8vZ2l0LmxpbnV4dHYub3JnL3NhaWx1cy9tZWRp
YV90cmVlLmdpdC9sb2cvP2g9b2YtbWF0Y2gtcHRyPgo+IAo+IE9uZSBtb250aCBsYXRlciwgSSBz
dGlsbCBkb24ndCBzZWUgdGhpcyBzZXQgaW4gdGhlIGxpbnV4LW5leHQuICBXaGF0J3MKPiBoYXBw
ZW5pbmcgaGVyZT8KPiAKCkkgZG9uJ3QgdGhpbmsgdGhpcyB3YXMgbWVyZ2VkIGluIHY2LjUtcmMx
LiBJdCdzIG5vdCBpbiBsaW51eC1uZXh0LAplaXRoZXIuIEFub3RoZXIgbW9udGggcGFzc2VkLi4u
CgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
