Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2D9CC76195
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Mar 2023 14:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oP3/azgzZ8IbURdM/rTZMfcPsKGJ4QPD+d6a5TF8vcY=; b=S7WBDOaqs0UGyx
	hVdVnb7Cby75N+Cz+d/sBpW6ieY99rmEBKZX6rM62h7WHBATxYPxYCvPMUguIa/Zm9gy2zOgUIG0U
	t1RnjIsdBlsDoonnewuA7TQoeNTmJa6Nc8YJBMJXCAg7AmfXTvi9VKhM2Ih0a+tGnliSaEHzBT10L
	Gj0ks6vbcP0BnU8WKPgodXkO1cgehl9VBFlOWo+9+6OXlrIbLcfIGxeBDNdYpLw3e7KUEELVsl/rt
	8uYcYSV2IgaORdJKjMGxm/1yaP+bs3IFWSAxaBznXtq+Iz7q2jy6nWpKo90vV0oSPhJ/gv/izbSJA
	hyk+He8r9evhaQTNJvKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peznp-00GNPO-17;
	Wed, 22 Mar 2023 14:51:01 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peznl-00GNNO-2c
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Mar 2023 14:50:59 +0000
Received: by mail-qt1-x830.google.com with SMTP id c19so22879457qtn.13
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Mar 2023 07:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112; t=1679496655;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xqEwR0mnH2dQTWES7qcpZxyDU3kIdJJrQjcIfcIfUws=;
        b=4mDo4UpOGVHUWLxUshM4Dz9N05BjdMLZQ56BMssgs0qciRkedoa4RVR4EJUVB3FRjs
         Ve7/uD241dSYiTmpXtZO/ZPzqSqxEq1/dEWNWiCFmglU4N115xERZS8mj66G1g44ObEU
         DUXgol5g66ixnMBg57YAmEiwVV5RMg8nWH9LyC9QJfrkVJZnspc3wbP4ekuFLLG990eZ
         p0dt1wZDF0FDDJHO6VuJnmTyVBSfbRBkRPEWGQawc0zvjyxupCmql6MVg/fw3DeJxUwp
         6EoMlWZn20w7yUhUSWMybVMwQUzOlI3RCagsvYnUA360+1fl0qLv0KXrHwazDroI58FA
         Cilg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679496655;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xqEwR0mnH2dQTWES7qcpZxyDU3kIdJJrQjcIfcIfUws=;
        b=EUJB5p2h0Qnvo2sUHyNjQQJbXa2h9zNIw4dTDNsesxPBFolW74aCoUx3PiMzfHx7Qu
         utbWQg1gFFgtdC1KgYTcc9AlEvwlZb2aoG0Ff4Dw/XdxBkHkxIMo8Lecvdvs4HnyksO9
         K147EaBKM3Sqn03og4URJcZBmdncVqkAzpOPkmNvYcOQpcS8PBHcjsxxu49LlgEZ/YMV
         c6z/SlI+V3bAn/oF1NmoIfQAAmxXkyvdf1T8aTYs4THLQivgXzjQCcPVhM1a/AzbuEN3
         MJiW8xilddN/2ZWB4uxLH08alk9ctHsKLYmCxBPwfDOuG2bAAMOHK0d6r46ZSLgkH6iG
         I3gA==
X-Gm-Message-State: AO0yUKUinTFz1A1OAGM+YnENvM7cV5e2EYk5JIyjMf341/rYPG3OWXKZ
	YdQddMDmSBUDy6X8Rm/vtaes/w==
X-Google-Smtp-Source: AK7set+olGnH2L8HiH8wu79IhsPwiTafG3zfFFddwhNxvuWfFc+q5aG+tjjynN8ff7zGF9L/LuK8og==
X-Received: by 2002:a05:622a:4d2:b0:3bf:e471:69a3 with SMTP id q18-20020a05622a04d200b003bfe47169a3mr6127461qtx.65.1679496655113;
        Wed, 22 Mar 2023 07:50:55 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net. [192.222.136.102])
        by smtp.gmail.com with ESMTPSA id 69-20020a370c48000000b00746777fd176sm5025558qkm.26.2023.03.22.07.50.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Mar 2023 07:50:54 -0700 (PDT)
Message-ID: <f085aa9225c573df906bdc7ff032a8fd591b18b3.camel@ndufresne.ca>
Subject: Re: [RFC 2/4] media: videobuf2: Replace bufs array by a list
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Hans Verkuil
	 <hverkuil-cisco@xs4all.nl>
Cc: David Laight <David.Laight@ACULAB.COM>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, "tfiga@chromium.org"
 <tfiga@chromium.org>,  "m.szyprowski@samsung.com"
 <m.szyprowski@samsung.com>, "mchehab@kernel.org" <mchehab@kernel.org>, 
 "ming.qian@nxp.com" <ming.qian@nxp.com>, "shijie.qin@nxp.com"
 <shijie.qin@nxp.com>,  "eagle.zhou@nxp.com" <eagle.zhou@nxp.com>,
 "bin.liu@mediatek.com" <bin.liu@mediatek.com>,  "matthias.bgg@gmail.com"
 <matthias.bgg@gmail.com>, "angelogioacchino.delregno@collabora.com"
 <angelogioacchino.delregno@collabora.com>, "tiffany.lin@mediatek.com"
 <tiffany.lin@mediatek.com>, "andrew-ct.chen@mediatek.com"
 <andrew-ct.chen@mediatek.com>, "yunfei.dong@mediatek.com"
 <yunfei.dong@mediatek.com>, "stanimir.k.varbanov@gmail.com"
 <stanimir.k.varbanov@gmail.com>, "quic_vgarodia@quicinc.com"
 <quic_vgarodia@quicinc.com>, "agross@kernel.org" <agross@kernel.org>, 
 "andersson@kernel.org" <andersson@kernel.org>, "konrad.dybcio@linaro.org"
 <konrad.dybcio@linaro.org>,  "ezequiel@vanguardiasur.com.ar"
 <ezequiel@vanguardiasur.com.ar>, "p.zabel@pengutronix.de"
 <p.zabel@pengutronix.de>, "daniel.almeida@collabora.com"
 <daniel.almeida@collabora.com>, "linux-media@vger.kernel.org"
 <linux-media@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "kernel@collabora.com" <kernel@collabora.com>
Date: Wed, 22 Mar 2023 10:50:52 -0400
In-Reply-To: <20230319233358.GD20234@pendragon.ideasonboard.com>
References: <20230313135916.862852-1-benjamin.gaignard@collabora.com>
	 <20230313135916.862852-3-benjamin.gaignard@collabora.com>
	 <20230313181155.GC22646@pendragon.ideasonboard.com>
	 <86df05244d974416903e919d387a0a0b@AcuMS.aculab.com>
	 <e704b505-86d8-c6f2-8546-adccdab72622@xs4all.nl>
	 <dc04d48e34ed40e58f43badd001a81d0@AcuMS.aculab.com>
	 <cbf34cf1-e065-8136-8344-89ca1864f637@xs4all.nl>
	 <20230319233358.GD20234@pendragon.ideasonboard.com>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_075058_083639_AC2ADAF0 
X-CRM114-Status: GOOD (  10.54  )
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

SGkgTGF1cmVudCwKCkxlIGx1bmRpIDIwIG1hcnMgMjAyMyDDoCAwMTozMyArMDIwMCwgTGF1cmVu
dCBQaW5jaGFydCBhIMOpY3JpdMKgOgo+ID4gVGhlIHR5cGljYWwgdXNhZ2UgaXMgdGhhdCBhcHBs
aWNhdGlvbnMgYWxsb2NhdGUgTiBidWZmZXJzIHdpdGggdGhlCj4gPiBWSURJT0NfUkVRQlVGUyBp
b2N0bCwgYW5kIGluIG1vc3QgY2FzZXMgdGhhdCdzIGFsbCB0aGV5IHVzZS4KPiAKPiBOb3RlIHRo
YXQgb25jZSB3ZSBnZXQgREVMRVRFX0JVRiAob3IgREVMRVRFX0JVRlMpIHN1cHBvcnQgSSdkIGxp
a2UgdG8KPiBlbmNvdXJhZ2UgYXBwbGljYXRpb25zIHRvIHVzZSB0aGUgbmV3IEFQSSwgYW5kIGRl
cHJlY2F0ZSBSRVFCVUZTCj4gKGRyb3BwaW5nIGl0IGlzbid0IG9uIG15IHJhZGFyLCBhcyBpdCB3
b3VsZCB0YWtlIGZvcmV2ZXIgYmVmb3JlIG5vCj4gdXNlcnNwYWNlIHVzZXMgaXQgYW55bW9yZSku
CgpJIHdhcyB3b25kZXJpbmcgaWYgeW91IGNhbiBleHRlbmQgb24gdGhpcy4gSSdtIHdvcnJpZWQg
dGhlIGNvdW50IHNlbWFudGljIG1pZ2h0CnByZXZlbnQgZW11bGF0aW5nIGl0IG92ZXIgY3JlYXRl
X2J1ZnMoKSBvcHMsIGJ1dCBpZiB0aGF0IHdvcmtzLCBkaWQgeW91IG1lYW50IHRvCmVtdWxhdGUg
aXQgc28gZHJpdmVyIG5vIGxvbmdlciBoYXZlIHRvIGltcGxlbWVudCByZXFidWZzKCkgaWYgdGhl
eSBoYXZlCmNyZWF0ZV9idWZzKCkgPwoKTmljb2xhcwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
