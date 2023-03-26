Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40675C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Mar 2023 12:31:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bJ634TphUrEvOcwXhKhoCz+Bc9QefxWizcnD1fe89Ng=; b=zFJcNdCYamjHUD
	7K4IFQo92So2CZUp5mK9/GE64QnYoEGw6OmC3IWgdasUKdbIk0ve6PBVbXabul8YSN6Eb81Pl6Wpm
	pUvc1nGbFPqQN9ANjBByQBYyz7CWpQDhNwq3cQmp9LlG5MaXJd15SA1KGCotiXi4o24I3Sq1YERua
	KdLHyUFjx+IO/z8yyVhyw7RyIPm6LpGTRIY5GgEKRLt2+bC+qFtHlJVFNGum147Zy7f279P8C7wus
	NOmjBaiKzuHdFd7//hoOIhgb6HY/xTEQ+jjUh/S85OvfvKbC/c7hTmKNzNO7/bwNNdqx1H07xCVjy
	UPGFH+LGg19sXUiXm4NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgPXF-008Pbt-2w;
	Sun, 26 Mar 2023 12:31:45 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgPXC-008PaV-0u;
	Sun, 26 Mar 2023 12:31:43 +0000
Received: by mail-wm1-x336.google.com with SMTP id l15-20020a05600c4f0f00b003ef6d684102so348383wmq.3;
        Sun, 26 Mar 2023 05:31:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679833899;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uoHL+pdwMo9hK8zxjS4mzFQRPu/UQKxxXEvDJq+ttZY=;
        b=AHKGIITCXHyXB1joXi2mO29w1R5+PifrXllUXZVc0AXlX/A9TFLc8uXPOAVrm06FnO
         WmRtzCW+i1bEKLjrVuohAxJhvtIH1AHPV/wUO1SI2U7IAG1i7AVNubRNHraIAt4xP1I7
         A3LLTzKsCm8/ljK9MRgyQJmJZV0VJZ3a0f69cLf52j6WBXrZ9Vm4h5CLk0X39AxoMSmJ
         7XKNadTm5wrLsfUS/uhfdIU9rK1zUw5cGQfCLJya49etN1Kah7yLAiLVSRA+aksUytWQ
         eanlbyUJcpstxaB7g20CYZ2Sc0ZfTKQzjY7td1KZJHZ8X+AyHs7rvSOtoYYIWkkB6Pzj
         WmWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679833899;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uoHL+pdwMo9hK8zxjS4mzFQRPu/UQKxxXEvDJq+ttZY=;
        b=r+bY5Lgb2EZXaTj+XrSLEAwNR7/vwD1uxVXQ0yhLmaZO1cL1bbg4J82RhYccZqpQPj
         mx0miNRpk5PDXSdDXkDnbPCUrwN6LVm8k4qJsKWKMGUolwIBUuLAIdXN18acq4Y5T6qp
         ksGxAdCtrfIuQG335st+3k67X8++j5ZGzPINUiwaCVs+FaB5a3NUM7e8K7cRAZtfIPhY
         kfeFvJvXmC1HE1cBmSxV4OGylVrboZtZ8lMBo6r72sBlASwcdZbZb1LcROQWgef0xXWf
         Eq971MJ2QWnIqRCZFiuvWk6cqpk/nZH8PdwTaSNuyZPtPXONIkeuTZGLnv7RCKYdDvcz
         jejw==
X-Gm-Message-State: AO0yUKUPyObF05MLARRK5AKzREpGKTQA+0i0i8lL1pNr0nxgX7a6e755
	e6nDbFgj3eNwMlR13ggmfF3f0EU62vVrP2XNVe8=
X-Google-Smtp-Source: AK7set9bo+NQ4ZSXBRygc8+jzXxsPq5IhJ/ncMbKfrksS/ZYnL/J2wrqhLdwDQIlTm9fbmduw6PyoZGbjwnjUenIVo4=
X-Received: by 2002:a05:600c:204:b0:3ea:8ed9:5f3e with SMTP id
 4-20020a05600c020400b003ea8ed95f3emr1641870wmi.4.1679833899099; Sun, 26 Mar
 2023 05:31:39 -0700 (PDT)
MIME-Version: 1.0
References: <20230326001535.149539-1-bigbeeshane@gmail.com> <a5966d2b-3e8f-3518-8f71-a4ed8de4b725@linaro.org>
In-Reply-To: <a5966d2b-3e8f-3518-8f71-a4ed8de4b725@linaro.org>
From: Shane Francis <bigbeeshane@gmail.com>
Date: Sun, 26 Mar 2023 13:31:28 +0100
Message-ID: <CABnpCuD4GYyTkdV1UZjMXFmkXfY77bhgvyE-F2xA6e+DW_STEg@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: Add basic NanoPi R6S (RK3588S) Support
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230326_053142_321454_2A2EBD16 
X-CRM114-Status: GOOD (  16.20  )
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

PiBNaXNzaW5nIGJpbmRpbmdzIGRvY3VtZW50YXRpb24uCgo+IFBsZWFzZSBydW4gc2NyaXB0cy9j
aGVja3BhdGNoLnBsIGFuZCBmaXggcmVwb3J0ZWQgd2FybmluZ3MuCgpTb3JyeSBJIHdhcyBtaXNz
aW5nIHRoZSBEVFMgYmluZGluZ3MgcGF0Y2gsIHdpbGwgc2VuZCB0aGF0Cm9uZSBvdmVyIHRoaXMg
ZXZlbmluZwoKT24gU3VuLCBNYXIgMjYsIDIwMjMgYXQgMTA6MzjigK9BTSBLcnp5c3p0b2YgS296
bG93c2tpCjxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gT24gMjYv
MDMvMjAyMyAwMToxNSwgU2hhbmUgRnJhbmNpcyB3cm90ZToKPiA+IFRoaXMgYWRkcyBiYXNpYyBz
dXBwb3J0IGZvciB0aGUgTmFub1BpIFI2UyBTQkMKPiA+Cj4gPiBDdXJyZW50bHkgd29ya2luZyA6
Cj4gPiAgIC0gVUFSVAo+ID4gICAtIG1tYyBzdG9yYWdlIChpbnRlcm5hbCkKPiA+ICAgLSBSR01J
SSAvIEdNQUMgMUdiIGV0aGVybmV0Cj4gPiAgIC0gU1lTIExFRAo+ID4KPiA+IFNpZ25lZC1vZmYt
Ynk6IFNoYW5lIEZyYW5jaXMgPGJpZ2JlZXNoYW5lQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUgICAgICAgICB8ICAgMSArCj4gPiAg
Li4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtbmFub3BpLXI2cy5kdHMgIHwgMTI2ICsrKysr
KysrKysrKysrKysrKwo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMTI3IGluc2VydGlvbnMoKykKPiA+
ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhz
LW5hbm9waS1yNnMuZHRzCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvTWFrZWZpbGUgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxl
Cj4gPiBpbmRleCA5OWE0NGM0MDBkNmEuLjM5Y2FkNzU3ZDI5ZCAxMDA2NDQKPiA+IC0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPiA+ICsrKyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPiA+IEBAIC05MSwzICs5MSw0IEBAIGR0Yi0kKENP
TkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1ODgtZWRnZWJsZS1uZXU2YS1pby5kdGIKPiA+ICBk
dGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4LWV2YjEtdjEwLmR0Ygo+ID4gIGR0
Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1ODgtcm9jay01Yi5kdGIKPiA+ICBkdGIt
JChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4cy1yb2NrLTVhLmR0Ygo+ID4gK2R0Yi0k
KENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1ODhzLW5hbm9waS1yNnMuZHRiCj4gPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLW5hbm9waS1yNnMu
ZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLW5hbm9waS1yNnMuZHRz
Cj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi4yMWIyNjUz
OWE4NTUKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4cy1uYW5vcGktcjZzLmR0cwo+ID4gQEAgLTAsMCArMSwxMjYgQEAKPiA+ICsv
LyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjArIE9SIE1JVCkKPiA+ICsKPiA+ICsv
ZHRzLXYxLzsKPiA+ICsKPiA+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcGluY3RybC9yb2NrY2hp
cC5oPgo+ID4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9ncGlvL2dwaW8uaD4KPiA+ICsjaW5jbHVk
ZSAicmszNTg4cy5kdHNpIgo+ID4gKwo+ID4gKy8gewo+ID4gKyAgICAgbW9kZWwgPSAiTmFub1Bp
IFI2UyAtIFJLMzU4OFMiOwo+ID4gKyAgICAgY29tcGF0aWJsZSA9ICJmcmllbmRseWVsZWMsbmFu
b3BpNiIsICJyb2NrY2hpcCxyazM1ODgiOwo+Cj4gTWlzc2luZyBiaW5kaW5ncyBkb2N1bWVudGF0
aW9uLgo+Cj4gUGxlYXNlIHJ1biBzY3JpcHRzL2NoZWNrcGF0Y2gucGwgYW5kIGZpeCByZXBvcnRl
ZCB3YXJuaW5ncy4KPgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKPgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
