Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16A09C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Mar 2023 15:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dv4I9LucIb9JA/FPwnVbXWsWqcFSDd53VS7YqPFtCeM=; b=YASskjU/GgiAo/
	LtqmTvO1mB/wERSrX/ILnhycTsz3jxsJRlToq2UGed3mJDZebyrUbm13WNoi+ofQQYMvxEPH3PUDe
	jQpID5d3s/Dpf3QZ89bVVOTfIOWeRGRdLRJPxWuoZqv74xQCmQ3cEumQRXIPDXxjYGCa5SKZfKpbI
	HvtD+rcSfEuaATMWmhG7G7ij3fZCWE4xGTZ59P8MSecwDskpHI9c7zVL1p053txZsXVdmdTMzGWhH
	TeeWfxrAqI6XMYq7/HJb4IKbzHJ8Oj9uKjs4ARISTp7Z9BIdXoHma7fOKcVGtUi/xt51hxIAYAK6L
	3G/u4HFstB2n1WBo+5vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfj8B-004njO-0I;
	Fri, 24 Mar 2023 15:15:03 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfj85-004ne1-1Z
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Mar 2023 15:15:01 +0000
Received: by mail-qt1-x82f.google.com with SMTP id g19so1732893qts.9
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Mar 2023 08:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112; t=1679670894;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BlgJl6q6nmXLwoducihQkeA4VjkQWrKTU/XpmLER5K8=;
        b=QAEyb3y2Vs1mSwY136+bu6SS016Otbf3KKfs9Mlyynm1gBzKn8IBg7DKKBORGVgyRL
         Wz6AisMNEwAkdbvXM7zJ93PyYVnHMRLt+SqV2+KIzgZGBKfSEA/SvYbGi1DbKwG8+t3X
         EnXZZz4q60ZBfI96mKWDnSZ2+1OtBHBRk9yySy0hupZdJ1YJ07CTHjT6hQzPp0un5Zi4
         ZMc2Z4n2f2EN3LAB+6ExoNkdtMUvrlZM9biFAE3RvcusV/CPEzZ0QodUUN6PBVj+S7q1
         VeHHAUt7o/Jx+ffoh+LeHf8+aj5khtrxdEJIKejig4N0viMRuvBtbR/GYyPRluiAV9Ca
         /PWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679670894;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BlgJl6q6nmXLwoducihQkeA4VjkQWrKTU/XpmLER5K8=;
        b=FmF6ftn/NvGoBGh38ze/0tQCmfwVcXBJEL5HxkU9vLy9u1oyB/2I92ffXUtZm3ezuv
         rOVnlMjmYnbcY1yX9PHEWaJY7SjajTTgHsMExFdAv0jrqGfApXMUATeFIE+Lw76Z08LZ
         gvcb+4z5t7UnI9OhcZJTsmp4RxnJjdfOTy/qAGDTj/CJosDtkUawUWQUiETLPOi/PZf3
         DH5vRVJnEw4G0/uE3PRJDedDwPT66yyj1vk71N3Qq+JFORPdYvpwSlNI9KiRBV69gxJy
         dZ5OxBL0GbtMpJG40P2UzFv21IoqCUcj5YfY3COOnujoPiXRazan25wl2xZYycrQUpYG
         8pnw==
X-Gm-Message-State: AAQBX9epUX4o4WrElyrscvkuXgXlUo50SxFBAS1t4n01/RKrWpIYsrNJ
	AtWXd5rFs8nXB7cBQpC4GTg2Nw==
X-Google-Smtp-Source: AKy350bCWxvUk1MaT4pqUixyno5lVt9EBSSrGyxJa0A4C2Bz3kyCAOSzYiktlm5Ro2rq0tSjC73bYQ==
X-Received: by 2002:a05:622a:1181:b0:3e3:90f7:b33c with SMTP id m1-20020a05622a118100b003e390f7b33cmr5002528qtk.7.1679670894617;
        Fri, 24 Mar 2023 08:14:54 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net. [192.222.136.102])
        by smtp.gmail.com with ESMTPSA id n14-20020ac8674e000000b003d65e257f10sm4230146qtp.79.2023.03.24.08.14.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 08:14:54 -0700 (PDT)
Message-ID: <2d6480e36ce061a63440d1e11d52b02e57ba746d.camel@ndufresne.ca>
Subject: Re: [RFC 2/4] media: videobuf2: Replace bufs array by a list
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Hans Verkuil <hverkuil-cisco@xs4all.nl>, David Laight
 <David.Laight@ACULAB.COM>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>,  "tfiga@chromium.org"
 <tfiga@chromium.org>, "m.szyprowski@samsung.com"
 <m.szyprowski@samsung.com>,  "mchehab@kernel.org" <mchehab@kernel.org>,
 "ming.qian@nxp.com" <ming.qian@nxp.com>,  "shijie.qin@nxp.com"
 <shijie.qin@nxp.com>, "eagle.zhou@nxp.com" <eagle.zhou@nxp.com>, 
 "bin.liu@mediatek.com" <bin.liu@mediatek.com>, "matthias.bgg@gmail.com"
 <matthias.bgg@gmail.com>,  "angelogioacchino.delregno@collabora.com"
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
Date: Fri, 24 Mar 2023 11:14:52 -0400
In-Reply-To: <20230322150153.GO20234@pendragon.ideasonboard.com>
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
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_081457_773580_AE01DE5A 
X-CRM114-Status: GOOD (  20.12  )
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

TGUgbWVyY3JlZGkgMjIgbWFycyAyMDIzIMOgIDE3OjAxICswMjAwLCBMYXVyZW50IFBpbmNoYXJ0
IGEgw6ljcml0wqA6Cj4gT24gV2VkLCBNYXIgMjIsIDIwMjMgYXQgMTA6NTA6NTJBTSAtMDQwMCwg
Tmljb2xhcyBEdWZyZXNuZSB3cm90ZToKPiA+IEhpIExhdXJlbnQsCj4gPiAKPiA+IExlIGx1bmRp
IDIwIG1hcnMgMjAyMyDDoCAwMTozMyArMDIwMCwgTGF1cmVudCBQaW5jaGFydCBhIMOpY3JpdMKg
Ogo+ID4gPiA+IFRoZSB0eXBpY2FsIHVzYWdlIGlzIHRoYXQgYXBwbGljYXRpb25zIGFsbG9jYXRl
IE4gYnVmZmVycyB3aXRoIHRoZQo+ID4gPiA+IFZJRElPQ19SRVFCVUZTIGlvY3RsLCBhbmQgaW4g
bW9zdCBjYXNlcyB0aGF0J3MgYWxsIHRoZXkgdXNlLgo+ID4gPiAKPiA+ID4gTm90ZSB0aGF0IG9u
Y2Ugd2UgZ2V0IERFTEVURV9CVUYgKG9yIERFTEVURV9CVUZTKSBzdXBwb3J0IEknZCBsaWtlIHRv
Cj4gPiA+IGVuY291cmFnZSBhcHBsaWNhdGlvbnMgdG8gdXNlIHRoZSBuZXcgQVBJLCBhbmQgZGVw
cmVjYXRlIFJFUUJVRlMKPiA+ID4gKGRyb3BwaW5nIGl0IGlzbid0IG9uIG15IHJhZGFyLCBhcyBp
dCB3b3VsZCB0YWtlIGZvcmV2ZXIgYmVmb3JlIG5vCj4gPiA+IHVzZXJzcGFjZSB1c2VzIGl0IGFu
eW1vcmUpLgo+ID4gCj4gPiBJIHdhcyB3b25kZXJpbmcgaWYgeW91IGNhbiBleHRlbmQgb24gdGhp
cy4gSSdtIHdvcnJpZWQgdGhlIGNvdW50IHNlbWFudGljIG1pZ2h0Cj4gPiBwcmV2ZW50IGVtdWxh
dGluZyBpdCBvdmVyIGNyZWF0ZV9idWZzKCkgb3BzLCBidXQgaWYgdGhhdCB3b3JrcywgZGlkIHlv
dSBtZWFudCB0bwo+ID4gZW11bGF0ZSBpdCBzbyBkcml2ZXIgbm8gbG9uZ2VyIGhhdmUgdG8gaW1w
bGVtZW50IHJlcWJ1ZnMoKSBpZiB0aGV5IGhhdmUKPiA+IGNyZWF0ZV9idWZzKCkgPwo+IAo+IEZv
ciBkcml2ZXJzIGl0IHNob3VsZCBiZSBmYWlybHkgc2ltcGx5LCBhcyB0aGUgcmVxYnVmcyBhbmQg
Y3JlYXRlX2J1ZnMKPiBpb2N0bCBoYW5kbGVycyBzaG91bGQganVzdCBwb2ludCB0byB0aGUgY29y
cmVzcG9uZGluZyB2aWRlb2J1ZjIgaGVscGVycy4KPiAKPiBXaGF0IEkgbWVhbnQgaXMgdGhhdCBJ
J2QgbGlrZSB0byBlbmNvdXJhZ2UgdXNlcnNwYWNlIHRvIHVzZSB0aGUKPiBWSURJT0NfQ1JFQVRF
X0JVRlMgaW9jdGwgaW5zdGVhZCBvZiBWSURJT0NfUkVRQlVGUy4KPiAKCkknbSBub3Qgc3VyZSB3
aGF0IHJhdGlvbmFsZSBJIGNhbiBnaXZlIGltcGxlbWVudGVyIHRvICJlbmNvdXJhZ2UiIHRoZW0g
dG8gdXNlIGEKbW9yZSBjb21wbGV4IEFQSSB0aGF0IG5lZWRzIHRvIGNvcHkgb3ZlciB0aGUgRk1U
ICh3aGljaCBoYXMganVzdCBiZWVuIHNldCksCnNwZWNpYWxseSBpbiB0aGUgaW5pdGlhbCBwcmUt
YWxsb2NhdGlvbiBjYXNlLiBGb3IgbW9zdCwgQ1JFQVRFX0JVRlMgYWZ0ZXIgU01UCndpbGwgbG9v
ayBsaWtlIGEgdmVyeSByZWR1bmRhbnQgYW5kIGNvdW50ZXIgaW50dWl0aXZlIHRoaW5nLiBNYXli
ZSB5b3UgaGF2ZSBhCm1vcmUgb3B0aW1pc3RpYyB2aWV3IG9uIHRoZSBtYXR0ZXIgPyBPciB5b3Ug
aGF2ZSBhIGJldHRlciBpZGVhIGhvdyB3ZSBjb3VsZCBnaXZlCmEgbWVhbmluZyB0byBoYXZpbmcg
YSBmbXQgdGhlcmUgb24gdGhlIGluaXRpYWwgY2FzZSB3aGVyZSB0aGUgYWxsb2NhdGlvbiBtYXRj
aGVzCnRoZSBxdWV1ZSBGTVQgPwoKTmljb2xhcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
