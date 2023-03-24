Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E5DFC76196
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Mar 2023 15:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D746Sc2hvFL7Jdzk0hjZvSh4fOLII/iisPYhklK3HfQ=; b=M91smtof3QIF7S
	brorYN4SZZE8sA4Q6vZM4CtQtH+7IWN4y1ImfV1Q3Q/zIfpBAhPdd5Q3fpVaG9NiZV/0f4y+4/Jo8
	DU/tooMX30/loRYBlB8ZecCHVGbKsZCQVlSITgW1QxR+UYfe/5xfxMbO8igQmo4RsqQRhfoTx2KGl
	f14zdH2XG1ytaS/6NyBHFwcnFtKcPKvtwoapt873XzwgmYwAzLso9IEBm0QqHAFpFcE1ybUyqehGO
	OEbenq7Eqd1wbuqfVx8ETU0bPoV7xo+PoBNja6XEoRJJlGtbo3wDn1JuuO2hTiEOcz6EPpseftPG6
	Z1HXtRvTCFVH4tG3w1yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfjRQ-004s6o-2h;
	Fri, 24 Mar 2023 15:34:56 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfjRN-004s4u-1G
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Mar 2023 15:34:55 +0000
Received: by mail-qt1-x836.google.com with SMTP id ga7so1816720qtb.2
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Mar 2023 08:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112; t=1679672091;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7FyBbkUlSzWUDUg7FSl6pltsSXVFIHYA7e4KXdYYzK0=;
        b=MeRC33lk6v1nX1CaLMpuOD7McLymhdBaxID6EIllMJ/odTnOgZ3Ls7Ufy+LF90tZc3
         Rukbh2vhZd09yzD7IbWoKlFToE7vKOFmwn1MlDeyeK2QwZRl3EaVkSQlWGqiEQlqMsp7
         +9v2PHmuFRGG9NieLrA0J6+yO3Y+KmaQ1RDeU1+L6KYByp+SPGdB4x5pwH1MnsWM0ylM
         u8RqbExRZdZwI4k+Yxkf1E1Ncu/Jj4EjQsyS+95WiNCaJHSGdxvcEnqY5rb+M9AJs79D
         Hq3hRsBDyx/SQLzfVXCtTwZyf2mN6bBbx9A8WJIWFxsqFrARC4TK+bTN+cXf/4XHlGwY
         bS8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679672091;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7FyBbkUlSzWUDUg7FSl6pltsSXVFIHYA7e4KXdYYzK0=;
        b=JRBdbKybrbZitO5ZKeY5sq5YppNk92h7tqxOv64UOuvPsO0uRbvxw2MBgFMN3islkc
         BoHQF9Rnk9kF1ZipzTawCzeg8P+5w+HufCouuocQJ41yqJizp2aE3iRYBbfxYfUXOZIO
         LuGRDdgPWWGr1Q0Ma/lIzi/IVO6Dv8GY2InydesGu3IL1bx/uN5R2TVGJ8lxH3GgVlsb
         1pR7/PN6v7rJP7nBoVpbRPF43HCXGzrGcks/Q3wqb0l/oXHsEVk+88HoMZ7o4Y6Z9+cT
         afY3mYcBpwjS1/UmhtJO17cQI0Bwlx++9StEWuscUvtUWI97DjCd9a5KG+2iBNnMnQXE
         a7Mg==
X-Gm-Message-State: AO0yUKWrb5rxhMODU9MyQdsmVphvC46QkkXlJJOT4EcomBxgZympqi0f
	Lh8pLlHDUqvWZARJtgNzgR17Tw==
X-Google-Smtp-Source: AK7set/k7jemVRQn2HhZJ/81On3zU02ry4zvQi9KTc7/Sa7tSuj5SNuZNPCX6T0rkNYDxGsmo9XXJQ==
X-Received: by 2002:ac8:5f0b:0:b0:3e1:c341:f618 with SMTP id x11-20020ac85f0b000000b003e1c341f618mr5351655qta.65.1679672091486;
        Fri, 24 Mar 2023 08:34:51 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net. [192.222.136.102])
        by smtp.gmail.com with ESMTPSA id h26-20020ac846da000000b003bfb5fd72a7sm12745420qto.86.2023.03.24.08.34.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 08:34:51 -0700 (PDT)
Message-ID: <6f2979d33526e5ccdc32cf096415d8309fc91d3d.camel@ndufresne.ca>
Subject: Re: [RFC 2/4] media: videobuf2: Replace bufs array by a list
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Laurent Pinchart
	 <laurent.pinchart@ideasonboard.com>
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
Date: Fri, 24 Mar 2023 11:34:48 -0400
In-Reply-To: <68ba7b3f-57f5-3969-5036-2c8d08273548@xs4all.nl>
References: <20230313135916.862852-1-benjamin.gaignard@collabora.com>
	 <20230313135916.862852-3-benjamin.gaignard@collabora.com>
	 <20230313181155.GC22646@pendragon.ideasonboard.com>
	 <86df05244d974416903e919d387a0a0b@AcuMS.aculab.com>
	 <e704b505-86d8-c6f2-8546-adccdab72622@xs4all.nl>
	 <dc04d48e34ed40e58f43badd001a81d0@AcuMS.aculab.com>
	 <cbf34cf1-e065-8136-8344-89ca1864f637@xs4all.nl>
	 <20230319233358.GD20234@pendragon.ideasonboard.com>
	 <f085aa9225c573df906bdc7ff032a8fd591b18b3.camel@ndufresne.ca>
	 <20230322150153.GO20234@pendragon.ideasonboard.com>
	 <2d6480e36ce061a63440d1e11d52b02e57ba746d.camel@ndufresne.ca>
	 <68ba7b3f-57f5-3969-5036-2c8d08273548@xs4all.nl>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_083453_426916_322497E8 
X-CRM114-Status: GOOD (  28.05  )
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

TGUgdmVuZHJlZGkgMjQgbWFycyAyMDIzIMOgIDE2OjE4ICswMTAwLCBIYW5zIFZlcmt1aWwgYSDD
qWNyaXTCoDoKPiBPbiAyNC8wMy8yMDIzIDE2OjE0LCBOaWNvbGFzIER1ZnJlc25lIHdyb3RlOgo+
ID4gTGUgbWVyY3JlZGkgMjIgbWFycyAyMDIzIMOgIDE3OjAxICswMjAwLCBMYXVyZW50IFBpbmNo
YXJ0IGEgw6ljcml0wqA6Cj4gPiA+IE9uIFdlZCwgTWFyIDIyLCAyMDIzIGF0IDEwOjUwOjUyQU0g
LTA0MDAsIE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6Cj4gPiA+ID4gSGkgTGF1cmVudCwKPiA+ID4g
PiAKPiA+ID4gPiBMZSBsdW5kaSAyMCBtYXJzIDIwMjMgw6AgMDE6MzMgKzAyMDAsIExhdXJlbnQg
UGluY2hhcnQgYSDDqWNyaXTCoDoKPiA+ID4gPiA+ID4gVGhlIHR5cGljYWwgdXNhZ2UgaXMgdGhh
dCBhcHBsaWNhdGlvbnMgYWxsb2NhdGUgTiBidWZmZXJzIHdpdGggdGhlCj4gPiA+ID4gPiA+IFZJ
RElPQ19SRVFCVUZTIGlvY3RsLCBhbmQgaW4gbW9zdCBjYXNlcyB0aGF0J3MgYWxsIHRoZXkgdXNl
Lgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBOb3RlIHRoYXQgb25jZSB3ZSBnZXQgREVMRVRFX0JVRiAo
b3IgREVMRVRFX0JVRlMpIHN1cHBvcnQgSSdkIGxpa2UgdG8KPiA+ID4gPiA+IGVuY291cmFnZSBh
cHBsaWNhdGlvbnMgdG8gdXNlIHRoZSBuZXcgQVBJLCBhbmQgZGVwcmVjYXRlIFJFUUJVRlMKPiA+
ID4gPiA+IChkcm9wcGluZyBpdCBpc24ndCBvbiBteSByYWRhciwgYXMgaXQgd291bGQgdGFrZSBm
b3JldmVyIGJlZm9yZSBubwo+ID4gPiA+ID4gdXNlcnNwYWNlIHVzZXMgaXQgYW55bW9yZSkuCj4g
PiA+ID4gCj4gPiA+ID4gSSB3YXMgd29uZGVyaW5nIGlmIHlvdSBjYW4gZXh0ZW5kIG9uIHRoaXMu
IEknbSB3b3JyaWVkIHRoZSBjb3VudCBzZW1hbnRpYyBtaWdodAo+ID4gPiA+IHByZXZlbnQgZW11
bGF0aW5nIGl0IG92ZXIgY3JlYXRlX2J1ZnMoKSBvcHMsIGJ1dCBpZiB0aGF0IHdvcmtzLCBkaWQg
eW91IG1lYW50IHRvCj4gPiA+ID4gZW11bGF0ZSBpdCBzbyBkcml2ZXIgbm8gbG9uZ2VyIGhhdmUg
dG8gaW1wbGVtZW50IHJlcWJ1ZnMoKSBpZiB0aGV5IGhhdmUKPiA+ID4gPiBjcmVhdGVfYnVmcygp
ID8KPiA+ID4gCj4gPiA+IEZvciBkcml2ZXJzIGl0IHNob3VsZCBiZSBmYWlybHkgc2ltcGx5LCBh
cyB0aGUgcmVxYnVmcyBhbmQgY3JlYXRlX2J1ZnMKPiA+ID4gaW9jdGwgaGFuZGxlcnMgc2hvdWxk
IGp1c3QgcG9pbnQgdG8gdGhlIGNvcnJlc3BvbmRpbmcgdmlkZW9idWYyIGhlbHBlcnMuCj4gPiA+
IAo+ID4gPiBXaGF0IEkgbWVhbnQgaXMgdGhhdCBJJ2QgbGlrZSB0byBlbmNvdXJhZ2UgdXNlcnNw
YWNlIHRvIHVzZSB0aGUKPiA+ID4gVklESU9DX0NSRUFURV9CVUZTIGlvY3RsIGluc3RlYWQgb2Yg
VklESU9DX1JFUUJVRlMuCj4gPiA+IAo+ID4gCj4gPiBJJ20gbm90IHN1cmUgd2hhdCByYXRpb25h
bGUgSSBjYW4gZ2l2ZSBpbXBsZW1lbnRlciB0byAiZW5jb3VyYWdlIiB0aGVtIHRvIHVzZSBhCj4g
PiBtb3JlIGNvbXBsZXggQVBJIHRoYXQgbmVlZHMgdG8gY29weSBvdmVyIHRoZSBGTVQgKHdoaWNo
IGhhcyBqdXN0IGJlZW4gc2V0KSwKPiA+IHNwZWNpYWxseSBpbiB0aGUgaW5pdGlhbCBwcmUtYWxs
b2NhdGlvbiBjYXNlLiBGb3IgbW9zdCwgQ1JFQVRFX0JVRlMgYWZ0ZXIgU01UCj4gPiB3aWxsIGxv
b2sgbGlrZSBhIHZlcnkgcmVkdW5kYW50IGFuZCBjb3VudGVyIGludHVpdGl2ZSB0aGluZy4gTWF5
YmUgeW91IGhhdmUgYQo+ID4gbW9yZSBvcHRpbWlzdGljIHZpZXcgb24gdGhlIG1hdHRlciA/IE9y
IHlvdSBoYXZlIGEgYmV0dGVyIGlkZWEgaG93IHdlIGNvdWxkIGdpdmUKPiA+IGEgbWVhbmluZyB0
byBoYXZpbmcgYSBmbXQgdGhlcmUgb24gdGhlIGluaXRpYWwgY2FzZSB3aGVyZSB0aGUgYWxsb2Nh
dGlvbiBtYXRjaGVzCj4gPiB0aGUgcXVldWUgRk1UID8KPiAKPiBJIHdvdWxkbid0IG1pbmQgaWYg
d2UgY2FuIG1ha2UgYSBtdWNoIG5pY2VyIENSRUFURV9CVUZTIHZhcmlhbnQgd2l0aCBqdXN0IHRo
ZQo+IHNpemUgaW5zdGVhZCBvZiBhIGZvcm1hdC4gVGhhdCB3YXMgaW4gaGluZHNpZ2h0IGEgcmVh
bGx5IGJhZCBpZGVhLCB0ZXJyaWJsZQo+IG92ZXItZW5naW5lZXJpbmcuCgpOb3RlIHRoYXQgYWxs
IERSTSBhbGxvY2F0b3JzIGFsc28gaW5jbHVkZXMgd2lkdGgvaGVpZ2h0IGFuZCBzb21lIGZvcm1h
dCByZWxhdGVkCmluZm8gKG9yIHRoZSBmdWxsIGluZm8pLiBUaGlzIGlzIGJlY2F1c2UgdGhlIGRy
aXZlciBkZWFscyB3aXRoIHRoZSBhbGlnbm1lbnQKcmVxdWlyZW1lbnRzLiBJbiBzb21lIHVzZSBj
YXNlcyAoSSBoYXZlIGludGVyIGZyYW1lIGR5bmFtaWMgY29udHJvbCBpbiBtaW5kCmhlcmUpIHRo
ZSBmbXQgY291bGQgYmUgYSBtZWFuIHRvIGZlZWRiYWNrIHRoZSBhbGlnbm1lbnQgKGxpa2UgYnl0
ZXNwZXJsaW5lKSBiYWNrCnRvIHRoZSBhcHBsaWNhdGlvbiB3aGVyZSB0aGUgc3RyZWFtIGlzIG5v
IGxvbmdlciBob21vZ2VuZW91cyBvbiB0aGUgRk1ULgoKVGhhdCBiZWluZyBzYWlkLCBJZiB3ZSBt
b3ZlIHRvd2FyZCBhIHNpemUgYmFzZSBhbGxvY2F0b3IgQVBJLCB3ZSBjb3VsZCBhbHNvIGp1c3QK
cG9pbnQgYmFjayB0byBhbiBleGlzdGluZyBIRUFQIChvciBleHBvcnQgYW4gbmV3IGhlYXAgaWYg
bm9uZSBhcmUgdmFsaWQpLiBBbmQKZGVmaW5lIHRoZSBzaXplaW1hZ2UocykgaXMgbm93IHRoYXQg
aW5mb3JtYXRpb24geW91IG5lZWQgZnJvbSB0aGUgRk1UIHRvCmFsbG9jYXRlIGFueXRoaW5nICsg
d2hpY2ggaGVhcCBuZWVkcyB0byBiZSB1c2VkIGZvciB0aGUgY3VycmVudCBzZXR1cC4KCk5pY29s
YXMKCj4gCj4gUmVnYXJkcywKPiAKPiAJSGFucwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
