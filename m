Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99A29C76196
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 19:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oFW8b2hG6sW2EWbPCR6qZ3q2yq/kCJM1AubrXB3q59I=; b=dg71K8YuGSyTGB
	8tzl6V7ubXniT2dD8qLIz8jUnFkKvfwgsQM077JrtDWg6qdnsi2O5eJqI8gYuenO5E4g1SlIxQnxm
	GOzyRVCyWvwWJuvhj9r6HhXQkzGkQPrumKEwMdX+y760so3Qe0CccAywEoKc1kBpEsicGECbrSewo
	EipOZ35EOKSSJQ5oj7nyrI0XuaP3qEaD+qB1QBxjzjiixAc3/Ih3QBLjKl6+iC6DFqhnaXDGfU6sx
	iw654O2OftW3raGyobiUmscoYqRzZtDUa/0nIWNTynhVVMpMm03+iVuaVTj4jJwpfBd//CdN8b+qe
	0J7qAkloWbggVMqsF/+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjQ7X-00GS1o-1f;
	Mon, 03 Apr 2023 19:45:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjPBG-00GHcP-0j;
	Mon, 03 Apr 2023 18:45:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Y+hD9dA0ZbFxuYniLgq410rnyqNfqnu1PjrS/o7Wfzo=; b=oyWvjzl7NV5vAG4oCZXP9CrUa9
	sOm5oj2TQ6znatNXGlGj/QywW94/ATlMea+mgr1i1mxVxDm0+2d8fQIP4u1GjZwkmwf0AqQtxpYS9
	U4hUI2Engg7QDh12P3G6KL5isYgZGQxoCE4UACccyFMDJJdi0Md09WJa26+JXuKJMpQR8UVQqgUR3
	j7a3fNlc7OFSA+6Mf6NkehdPb24PobW4fTHVp5m9g6QZEScQsH+Vg6WgaAKLg4kk4R4UXnVN8kXQp
	afKnUhWkPPjcVXpYb5xHbb/oCXdOjsNasYfPlEcvH5LRUqegcxFLpaGRIS9Y3jMjd67zGM0niD20r
	JeqBYh7A==;
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjNx2-008xGD-24;
	Mon, 03 Apr 2023 17:26:42 +0000
Received: by mail-ed1-x52d.google.com with SMTP id i5so120520290eda.0;
        Mon, 03 Apr 2023 10:26:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680542798; x=1683134798;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y+hD9dA0ZbFxuYniLgq410rnyqNfqnu1PjrS/o7Wfzo=;
        b=butJWZEuLrgW6EYVdXQX7er0f2ttpqKwL1T+MagEvKSjYh1ZWri67cTm2AimwJ0oeT
         0yAEcubHelx0+crMbFwYZEwev/9QgTzweiRuTsOnsFmJlQF7l0s8NtvKYdEgC7YASkBi
         wJDNANefgtUl/pYwm5EuCsuEdRMWLlNrYRanIGPkhB+hzk41OlX+qhC+/PYOVd8IU120
         +x8hdO2z9wX9faXLzBpCf0om18/IMGWUMsVONzVPs//VQjyqUm2/2f4hjfEqwcv8/N2s
         kc/4XU4k7ldj05CY+zPwi6DkQE4muIHxqLyLgF/UeN1E3iwAPh4FSEGos0H4d2fl4Srt
         c1+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680542798; x=1683134798;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y+hD9dA0ZbFxuYniLgq410rnyqNfqnu1PjrS/o7Wfzo=;
        b=VB++bpCHHsq9jhWXQwL4pfu+dJf35dnv8QvbEegY9F/m5zJMEADX+UGINrfEn3MAc4
         aAbFWiXtY7meVckJKvPx5zHu9AiFgI4tEgKNYZI7Ebn5nxBWy6Dh3Or2Tu48zQ4iQgdo
         0GSLtsR+sv7phoX+dX2obO42thGv6WQ8Tk7Q0kWf4EDqQmV6iewaWPzirt0zNrtX+aIL
         NB86ZeOY+hoKpRRWNWN/jUSvzP8TjZI0axfKzwvIAr0smXa0VNGKUIINw99IMvrocdOG
         27SXW+KbY+HQz+diGeXKzOaz6qFuH0EzzHQiPPjve6lUv5+YxgTjYMIXRnR/wVyfrf63
         DABw==
X-Gm-Message-State: AAQBX9dfYJhbkSy7+W+g0+7/JNHJmjbdDicwWQzwxlYbAaHT5O4ZTfRJ
	CIAIc/olFJvuMwGXl9CIz1Y=
X-Google-Smtp-Source: AKy350Ytu2/uzMZQ1usmBm61eO1m+4WPscUOFQRGsCNu1cdSg0v/ydxcUnWenLETPMfW9cawQZYtSg==
X-Received: by 2002:a17:906:3148:b0:930:fa8e:9597 with SMTP id e8-20020a170906314800b00930fa8e9597mr36258140eje.42.1680542797873;
        Mon, 03 Apr 2023 10:26:37 -0700 (PDT)
Received: from [192.168.1.45] (hst-221-41.medicom.bg. [84.238.221.41])
        by smtp.gmail.com with ESMTPSA id bu7-20020a170906a14700b0093348be32cfsm4874651ejb.90.2023.04.03.10.26.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Apr 2023 10:26:37 -0700 (PDT)
Message-ID: <36febd82-85b2-aa4d-c7e0-6343b119e0cc@gmail.com>
Date: Mon, 3 Apr 2023 20:26:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] media: dt-bindings: Drop unneeded quotes
To: Sakari Ailus <sakari.ailus@iki.fi>, Rob Herring <robh@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Joe Tessler <jrt@google.com>, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Jacopo Mondi <jacopo+renesas@jmondi.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Yunfei Dong <yunfei.dong@mediatek.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Vikash Garodia <quic_vgarodia@quicinc.com>, Heiko Stuebner
 <heiko@sntech.de>, Benoit Parrot <bparrot@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org
References: <20230320233944.2920964-1-robh@kernel.org>
 <ZCaoVwRuxVOTZdI4@valkosipuli.retiisi.eu>
Content-Language: en-US, bg-BG
From: Stanimir Varbanov <stanimir.k.varbanov@gmail.com>
In-Reply-To: <ZCaoVwRuxVOTZdI4@valkosipuli.retiisi.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_182640_845475_DA9CE5A3 
X-CRM114-Status: GOOD (  15.07  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVpIFNha2FyaSwKCk9uIDMxLjAzLjIzINCzLiAxMjozMSDRhy4sIFNha2FyaSBBaWx1cyB3cm90
ZToKPiBIaSBSb2IsCj4gCj4gT24gTW9uLCBNYXIgMjAsIDIwMjMgYXQgMDY6Mzk6NDJQTSAtMDUw
MCwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4+IENsZWFudXAgYmluZGluZ3MgZHJvcHBpbmcgdW5uZWVk
ZWQgcXVvdGVzLiBPbmNlIGFsbCB0aGVzZSBhcmUgZml4ZWQsCj4+IGNoZWNraW5nIGZvciB0aGlz
IGNhbiBiZSBlbmFibGVkIGluIHlhbWxsaW50Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBSb2IgSGVy
cmluZyA8cm9iaEBrZXJuZWwub3JnPgo+IAo+IFRoaXMgcGF0Y2ggY29udGFpbnMgY2hhbmdlcyB0
byBRdWFsY29tbSBiaW5kaW5ncyB0aGF0IGhhdmUgYmVlbiBhbHJlYWR5Cj4gbWFkZSBieSBvdGhl
ciBwYXRjaGVzIGJ5IEtyenlzenRvZi4gSSB0aGluayB0aGVzZSB0b29rIHNvbWUgdGltZSB0byBn
ZXQKPiBtZXJnZWQgdG8gdGhlIG1lZGlhIHRyZWUuCj4gCj4gSSd2ZSBkcm9wcGVkIHRob3NlLCB0
aGUgcmVzdWx0IGlzIGhlcmU6Cj4gCj4gPFVSTDpodHRwczovL2dpdC5saW51eHR2Lm9yZy9zYWls
dXMvbWVkaWFfdHJlZS5naXQvY29tbWl0Lz9pZD1kNzVjYWUwODg0ZTgwYmJhNDg2Zjg1ZTgyYjMz
YTFkYWUzYzljOTc2Pgo+IAoKRG8geW91IHRoaW5rIGl0IHdpbGwgZml4IHRoaXMgcHVsbCByZXF1
ZXN0IGZhaWx1cmU/CgpodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMzAzMjkyMTQzMTAu
MjUwMzQ4NC0xLWplbmtpbnNAbGludXh0di5vcmcvCgotLSAKcmVnYXJkcywKU3RhbgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
