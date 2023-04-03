Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02C64C77B6E
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 20:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+56lxGFyWRR6uH7XdzbFQhrXeB60O7Uan6Rrg4C8uKM=; b=i5+1/rIP5UwkSO
	lEz+lPbxRN7dpAmYZsQtsmBcUBZr6LoXaOZgfBAU5JlIULp0dLRlKD7XaKZYV2nW+htByKoQU4iZR
	ZtRJq/FrFgG3fR1vxrDt7dlHP1VxE0GmOsSqmR+ZrlhhkBaXeQ084bGVR3s1Rvbbeko2tLG8wXxLm
	yy/Dlt41qpXbaFtcvMmEXsXsXLoDITXvrkle3EB2JiP0SrwBwXPL1lhB0WPY6ZkgY8PPpuRYk3xX8
	RoSNroDz6bJ0n2OH9nPd4elPG5V7eWg6iX6lf/DEcfGM79b/x0HJu/XCNE2P6GL9U7DRLPGok2iR6
	ON7XIpwZdNnS6Ce1H8rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjQv6-00GfMv-0m;
	Mon, 03 Apr 2023 20:36:52 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjQv2-00GfIu-0N;
	Mon, 03 Apr 2023 20:36:49 +0000
Received: by mail-ed1-x52d.google.com with SMTP id eg48so122204032edb.13;
        Mon, 03 Apr 2023 13:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680554202; x=1683146202;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vy6stLO/SvxfwXBcW4hNhQWrO4hr3q50cVzPyJ7ePCg=;
        b=VQvTxb4s4x3bbD5Z8pANMfZBt/tWdtGTFLjlcUO5vq99065tQltoVAoAGqWsIPjW64
         SKISUVrjdnzODaHIJFriC6qtAHslbkjCaaFdjo3jKhe0eLIiYNIk4woDDMrdLvMOJviN
         LJRWqeQZZMyzoYTQUNHVxOGf9PNNRvcZIqNZDWH6lQNmNkEUWkCdlbPj8H8ZZbE0EmvF
         KSPyqaCbmoJj+Ap4Av7wNpIOkL3fNGkmeTTxiWDFCmpu04ok6ZUh7QhK06zaFOzNlqC4
         b3a6uAzOdflcXzRPqllKfr+BRx9vCY5fXKDXspX9BMZwdkQCc61WrI+AdxPXl4Eh8lxF
         BQcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680554202; x=1683146202;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vy6stLO/SvxfwXBcW4hNhQWrO4hr3q50cVzPyJ7ePCg=;
        b=sTHOLpi/XjnlCB5nk+Tm5kqPW1Af3fUd6WlTdbJd8/d8M/m8woQV4UVJyR7Pwgi0La
         ImHA5xidHei9h2wkpdxUID+qig2LoOjyKB7ZDZA7pUI9e2tUm+tTZ3BB5OgqL/L4G14Q
         RoqLLY+/JEAngShaQPHMlGFltJIDoP6CeCYntky84qwEg9WXlimWqy9+tGfPNo4SQQis
         PbkN0dtL2goqZ9sUdF0zFAiVS4CQi1avotCB80eksmfidzOXbt4xJc2YyMAnYIExiweu
         zf4Ff7CgltygjJ39uUILJ1EkWrhboRtOQbB2hA2GVWlX4sQZaXHp8FHnwy6OW0mX/UvB
         tdEQ==
X-Gm-Message-State: AAQBX9doPpvWlflu5rumAbECCH+Hq0x3i6en0uR8flXp3m7Ew7LVX8uh
	zbg7Qg2dU1LP9p+wHa31lR8=
X-Google-Smtp-Source: AKy350alhAis2kESvJD9XmrmapRbgNzvxiwQRz0GqYYyoszFrunpcb89uovyfWfpTiMCkE0hsYCTjg==
X-Received: by 2002:a17:906:2b8d:b0:948:ce3e:8660 with SMTP id m13-20020a1709062b8d00b00948ce3e8660mr2010760ejg.53.1680554202117;
        Mon, 03 Apr 2023 13:36:42 -0700 (PDT)
Received: from [192.168.1.45] (hst-221-114.medicom.bg. [84.238.221.114])
        by smtp.gmail.com with ESMTPSA id ay20-20020a170906d29400b00928de86245fsm4965942ejb.135.2023.04.03.13.36.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Apr 2023 13:36:41 -0700 (PDT)
Message-ID: <eeb3a625-0af5-9009-9e75-a89938089a8f@gmail.com>
Date: Mon, 3 Apr 2023 23:36:38 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] media: dt-bindings: Drop unneeded quotes
Content-Language: en-US, bg-BG
To: Sakari Ailus <sakari.ailus@iki.fi>
Cc: Rob Herring <robh@kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
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
 <36febd82-85b2-aa4d-c7e0-6343b119e0cc@gmail.com>
 <ZCsnYGMkV2Zrw3fJ@valkosipuli.retiisi.eu>
From: Stanimir Varbanov <stanimir.k.varbanov@gmail.com>
In-Reply-To: <ZCsnYGMkV2Zrw3fJ@valkosipuli.retiisi.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_133648_154449_784BD9AE 
X-CRM114-Status: GOOD (  17.77  )
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

SGkgU2FrYXJpLAoKT24gMy4wNC4yMyDQsy4gMjI6MjIg0YcuLCBTYWthcmkgQWlsdXMgd3JvdGU6
Cj4gSGkgU3RhbiwKPiAKPiBIb3cgYXJlIHlvdSBkb2luZz8KPiAKPiBPbiBNb24sIEFwciAwMywg
MjAyMyBhdCAwODoyNjoyOFBNICswMzAwLCBTdGFuaW1pciBWYXJiYW5vdiB3cm90ZToKPj4gSGVp
IFNha2FyaSwKPj4KPj4gT24gMzEuMDMuMjMg0LMuIDEyOjMxINGHLiwgU2FrYXJpIEFpbHVzIHdy
b3RlOgo+Pj4gSGkgUm9iLAo+Pj4KPj4+IE9uIE1vbiwgTWFyIDIwLCAyMDIzIGF0IDA2OjM5OjQy
UE0gLTA1MDAsIFJvYiBIZXJyaW5nIHdyb3RlOgo+Pj4+IENsZWFudXAgYmluZGluZ3MgZHJvcHBp
bmcgdW5uZWVkZWQgcXVvdGVzLiBPbmNlIGFsbCB0aGVzZSBhcmUgZml4ZWQsCj4+Pj4gY2hlY2tp
bmcgZm9yIHRoaXMgY2FuIGJlIGVuYWJsZWQgaW4geWFtbGxpbnQuCj4+Pj4KPj4+PiBTaWduZWQt
b2ZmLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+Pj4KPj4+IFRoaXMgcGF0Y2gg
Y29udGFpbnMgY2hhbmdlcyB0byBRdWFsY29tbSBiaW5kaW5ncyB0aGF0IGhhdmUgYmVlbiBhbHJl
YWR5Cj4+PiBtYWRlIGJ5IG90aGVyIHBhdGNoZXMgYnkgS3J6eXN6dG9mLiBJIHRoaW5rIHRoZXNl
IHRvb2sgc29tZSB0aW1lIHRvIGdldAo+Pj4gbWVyZ2VkIHRvIHRoZSBtZWRpYSB0cmVlLgo+Pj4K
Pj4+IEkndmUgZHJvcHBlZCB0aG9zZSwgdGhlIHJlc3VsdCBpcyBoZXJlOgo+Pj4KPj4+IDxVUkw6
aHR0cHM6Ly9naXQubGludXh0di5vcmcvc2FpbHVzL21lZGlhX3RyZWUuZ2l0L2NvbW1pdC8/aWQ9
ZDc1Y2FlMDg4NGU4MGJiYTQ4NmY4NWU4MmIzM2ExZGFlM2M5Yzk3Nj4KPj4+Cj4+Cj4+IERvIHlv
dSB0aGluayBpdCB3aWxsIGZpeCB0aGlzIHB1bGwgcmVxdWVzdCBmYWlsdXJlPwo+Pgo+PiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMzAzMjkyMTQzMTAuMjUwMzQ4NC0xLWplbmtpbnNA
bGludXh0di5vcmcvCj4gCj4gQWgsIGl0IHNlZW1zIHRvIGJlIHRoZSBzYW1lIGlzc3VlIGhlcmUu
Cj4gCj4gVGhlIHBhdGNoIGhhcyBiZWVuIG1lcmdlZCB2aWEgbXkgdHJlZSwgd2hlcmVhcyB0aGUg
cmVzdCBvZiB0aGUgcGF0Y2hzZXQgd2FzCj4gYXBwYXJlbnRseSBtZXJnZWQgYnkgSGFucyBlYXJs
aWVyIG9uLgo+IAo+IDxVUkw6aHR0cHM6Ly9wYXRjaHdvcmsubGludXh0di5vcmcvcHJvamVjdC9s
aW51eC1tZWRpYS9saXN0Lz9zZXJpZXM9OTUzMSZzdWJtaXR0ZXI9JnN0YXRlPSomcT0mYXJjaGl2
ZT0mZGVsZWdhdGU9Pgo+IAoKVGhhbmsgeW91LiBJIHVuZGVyc3RhbmQgd2hhdCBpcyBnb2luZyBv
biwgbm93IDopCgpJIHdpbGwgZHJvcCBLcnp5c3p0b2YncyBwYXRjaHNldCBmcm9tIFZlbnVzIHB1
bGwgcmVxdWVzdC4KCi0tIApyZWdhcmRzLApTdGFuCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
