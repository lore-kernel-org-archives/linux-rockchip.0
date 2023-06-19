Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58669EB64DA
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jun 2023 14:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qnqtmoQE+MlTocuxcpmyZm7ttmkMnaLcYVR6Va0peuc=; b=zbk0eDEgynV6AH
	J9+sH/vJ9mjsbBKLsab1qwFPS6UYY45IMCnLAa8PmOAjzO+nU21kfZeMp93O5l2/C+nH7CBfa9uv7
	fftw21ac3DdBXcOCl35UFNVINO0Yrr0DSj1B3DlA8ijBEtmJYjgLlscIdpQ85YLQIyhKhvQTZz7Ue
	tD/RGx0JiIqA9CF2R+sKrlV417ao9ac53tBHB9WqdgEPlE+uxzl65u2cjZJ03cPkkIhiG8RgZc41n
	icKy5cUvppaI0ZjBGBl1nF7bnPqLUfAXBxMDgVThMsaMzkVcavmLFptQVB2y8NL91H/jifHjHtBcN
	dhOSemLD9Ci30hTr7FSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBFdi-008cml-2L;
	Mon, 19 Jun 2023 14:13:54 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBFdf-008ckP-1P
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Jun 2023 14:13:53 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-519f6e1a16cso4162571a12.2
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Jun 2023 07:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687184029; x=1689776029;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jVJ0BYxgwjT3FqtgMQASJ1B7HEopYnAjVGB5hh3e82E=;
        b=M9z4P28nrWagW+IjU4/HCdHHlcaQEqWX7EhrBPn1H9FU9ONO2pp1EL7jsnMEg7I4ll
         8xceJ4/OUlji0kH8mkofXiti0XNSLOkB+0Wf65ZU6tfTxko/+anKk/1IzQtfC9nnhqSn
         v0saRZq6uSUhQLNS5JT3kdhnjZ1/DyphBy0cqE3yW2OKeZHjRnC6OjUVX+4oCtNaiyT0
         nEvPBH35+Sk+tWFKYpqAJs0dpnJouPKSb3L5KOAJ2FDdXEY0jtAzK+tNFs328b615JL0
         /6vKlg8BGmt4r1XepjO9UvUPwEkZC6srmp/+i8Iy9RuuagsWQKejiIk0zVJtpTdvqsaa
         zNpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687184029; x=1689776029;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jVJ0BYxgwjT3FqtgMQASJ1B7HEopYnAjVGB5hh3e82E=;
        b=ci44J/Wboopd/J3dQgKYdXVNRw7R8oOc4ZRD84BKsnXY1nnd/tKbX+ZSlNFHCBitIV
         aYFHjZlcjpJecq2UTVWzbO7Ffgqjr61zWywMK4k1fyAQbLLhWdEVkTWqeQ+HTih/wVLQ
         s2Kb6zQi1hKb1ymv8G5CNGYesyHC7l46Cv5nOegc0AgkDfc9IYT7Oj1m7IeuhMqxwKwi
         yuCiMnc5hrfNlXoOzjx7DZ0BC2ejJ66CK2beV9vZeDCd+4mWQnoe07vWUmW97jdG/tC/
         CqCVRXKUNEHc9BYYsJ7WzgEnlM0Qexe683xOk2iQ+aL4qVPuE2UIjXQXJtOYi8ozUf2H
         Ysqg==
X-Gm-Message-State: AC+VfDxtCCx0hwy//SLjA4Difhsx3HtnqaS6bD8D1W/yPDSAWS18+jc1
	87yRc80lLyU89kahWkiGMf0pxw==
X-Google-Smtp-Source: ACHHUZ7O2sSAG3s4Vml5tVOvx0rnJQoDa5gdvDzwpYu+SWO687o/I76se/9w1hJ7dH9KrjVmuODOeQ==
X-Received: by 2002:a05:6402:164c:b0:51a:4452:ae0c with SMTP id s12-20020a056402164c00b0051a4452ae0cmr4540560edx.35.1687184029619;
        Mon, 19 Jun 2023 07:13:49 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id p4-20020a05640210c400b005158563be4asm13096759edu.33.2023.06.19.07.13.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jun 2023 07:13:49 -0700 (PDT)
Message-ID: <158425ec-86e8-ca3e-eed8-e14b37c42730@linaro.org>
Date: Mon, 19 Jun 2023 16:13:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 01/28] media: cec: ch7322: drop of_match_ptr for ID table
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
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ZG9ger4WE2VWoVEF@valkosipuli.retiisi.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_071351_483669_9BD5C984 
X-CRM114-Status: GOOD (  21.49  )
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

T24gMjUvMDUvMjAyMyAxNToxOSwgU2FrYXJpIEFpbHVzIHdyb3RlOgo+IEhpIGZvbGtzLAo+IAo+
IE9uIFRodSwgTWF5IDI1LCAyMDIzIGF0IDAzOjQwOjA0UE0gKzAzMDAsIFNha2FyaSBBaWx1cyB3
cm90ZToKPj4gSGkgSGFucywKPj4KPj4gT24gU2F0LCBNYXkgMTMsIDIwMjMgYXQgMTE6NTc6MzNB
TSArMDIwMCwgSGFucyBWZXJrdWlsIHdyb3RlOgo+Pj4gT24gMTIvMDUvMjAyMyAxODozNSwgS3J6
eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4+PiBPbiAxMi8wMy8yMDIzIDE0OjEyLCBLcnp5c3p0
b2YgS296bG93c2tpIHdyb3RlOgo+Pj4+PiBUaGUgZHJpdmVyIGNhbiBtYXRjaCBvbmx5IHZpYSB0
aGUgRFQgdGFibGUgc28gdGhlIHRhYmxlIHNob3VsZCBiZSBhbHdheXMKPj4+Pj4gdXNlZCBhbmQg
dGhlIG9mX21hdGNoX3B0ciBkb2VzIG5vdCBoYXZlIGFueSBzZW5zZSAodGhpcyBhbHNvIGFsbG93
cyBBQ1BJCj4+Pj4+IG1hdGNoaW5nIHZpYSBQUlAwMDAxLCBldmVuIHRob3VnaCBpdCBtaWdodCBu
b3QgYmUgcmVsZXZhbnQgaGVyZSkuCj4+Pj4+Cj4+Pj4+ICAgZHJpdmVycy9tZWRpYS9jZWMvaTJj
L2NoNzMyMi5jOjU4MzozNDogZXJyb3I6IOKAmGNoNzMyMl9vZl9tYXRjaOKAmSBkZWZpbmVkIGJ1
dCBub3QgdXNlZCBbLVdlcnJvcj11bnVzZWQtY29uc3QtdmFyaWFibGU9XQo+Pj4+Pgo+Pj4+PiBT
aWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxp
bmFyby5vcmc+Cj4+Pj4+IC0tLQo+Pj4+Cj4+Pj4gSGFucywgU2FrYXJpLAo+Pj4+Cj4+Pj4gQ2Fu
IHlvdSBwaWNrIHVwIHRoZSBwYXRjaHNldD8gVGhlcmUgd2FzIHBvc2l0aXZlIGZlZWRiYWNrOgo+
Pj4+IGh0dHBzOi8vcGF0Y2h3b3JrLmxpbnV4dHYub3JnL3Byb2plY3QvbGludXgtbWVkaWEvcGF0
Y2gvMjAyMzAzMTIxMzEzMTguMzUxMTczLTEta3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3Jn
Lwo+Pj4+Cj4+Pj4gYnV0IGl0IHNlZW1zIGl0IHdhcyBub3QgYXBwbGllZC4KPj4+Cj4+PiBJIHNl
ZSBpdCBpcyBkZWxlZ2F0ZWQgdG8gU2FrYXJpIGluIHBhdGNod29yayBhbmQgbWFya2VkIFVuZGVy
IFJldmlldywgYnV0IEkgZG9uJ3QKPj4+IHNlZSBhIGNvcnJlc3BvbmRpbmcgcHVsbCByZXF1ZXN0
IGZvciB0aGlzIHNlcmllcy4KPj4+Cj4+PiBTYWthcmksIGRpZCBzb21ldGhpbmcgZ28gd3Jvbmc/
Cj4+Cj4+IEkgc3BvdHRlZCB0aGlzIGFzIEhhbnMgbm90aWZpZWQgbWUgaW4gSVJDLCBJIHdhc24n
dCBjYydkLiBBcG9sb2dpZXMgZm9yCj4+IHRoaXMgLS0tIEkgaW50ZW5kZWQgdG8gdGFrZSB0aGVz
ZSBidXQgSSB0aGluayBJIG11c3QgaGF2ZSBtaXNzZWQgc29tZXRoaW5nCj4+IGltcG9ydGFudCBp
biB0aGUgcHJvY2Vzcy4gSSdsbCB0YWtlIHRoZW0gbm93Lgo+Pgo+PiBUaGFua3MuCj4gCj4gVGhp
cyBubyBsb25nZXIgYXBwbGllZCBjbGVhbmx5LiBNb3N0bHkgdGhlcmUgd2FzIGZ1enogbmVhciAu
b2ZfbWF0Y2hfdGFibGUKPiBjaGFuZ2VzIGFzIHByb2JlX25ldyAoYW5kIHJlbW92ZV9uZXc/KSBj
aGFuZ2VzIGhhdmUgYmVlbiByZWNlbnRseSBtZXJnZWQuCj4gVGhlcmUgd2VyZSBvdGhlciBpc3N1
ZXMgYXMgd2VsbCwgSSBtYXJrZWQgYSBmZXcgcGF0Y2hlcyBpbiB0aGUgc2V0ICJub3QKPiBhcHBs
aWNhYmxlIiBhcyBvdGhlciBwYXRjaGVzIGhhZCBhbHJlYWR5IGRvbmUgZXF1aXZhbGVudCBjaGFu
Z2VzIGVhcmxpZXIuCj4gCj4gVGhlcmUgd2VyZSBzdWJzdGFuY2UtY2hhbmdpbmcgY2hhbmdlcyBp
biB0aGUgMjB0aCBwYXRjaCwgcmVwbGllZCB0byB0aGUKPiBkaXN1Y2NzaW9uIHRoZXJlLgo+IAo+
IEkndmUgcHVzaGVkIHRoZSByZXN1bHQgaGVyZSBhbmQgaW50ZW5kIHRvIHNlbmQgUFIgdG8gTWF1
cm8gc29vbiBpZiB0aGVyZQo+IGFyZSBubyBpc3N1ZXM6Cj4gCj4gPFVSTDpodHRwczovL2dpdC5s
aW51eHR2Lm9yZy9zYWlsdXMvbWVkaWFfdHJlZS5naXQvbG9nLz9oPW9mLW1hdGNoLXB0cj4KCk9u
ZSBtb250aCBsYXRlciwgSSBzdGlsbCBkb24ndCBzZWUgdGhpcyBzZXQgaW4gdGhlIGxpbnV4LW5l
eHQuICBXaGF0J3MKaGFwcGVuaW5nIGhlcmU/CgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
