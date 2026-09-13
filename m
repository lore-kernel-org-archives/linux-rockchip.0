Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8973CC88E63
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Sep 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W69nKvF3xXUQM7QW4FswBypXpjGFlWaLdQob51vDca0=; b=Bv2rWr7xwOMwLl
	Qm4hjKX2tYOi4Ngai7g0u6FWK7lpHdWnlMu0a0DYynXiDmAksu6dg/UI9xxqHMolPso4G0fjBqj2s
	F2gwxuy8R8CZq4H/bj8BG7vCh+EtB7WEt0JVg6C46zFXzglo76wLUoLiEhY1iMNZcxrLer+xv6aPu
	gR2hOXckin0WFz3qGLJBiFkwtL3CWPWd7qHjYWcu4yT9QnUnzl9bOfUxEoEp0KN5ZjkAudGvqJOJx
	NI4ZyqRtiFSElYJMX9nI2OUtTS+nY0VBuJEscB21KvlxXetx/xpmb7eaGXr2dULkOeK8TlBWFsk1V
	fv8FXVJIDMLzeBNrsj9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5mQS-00000001nOk-3Y4i;
	Sun, 13 Sep 2026 15:47:28 +0000
Received: from mail-ej2-x00.google.com ([2a00:1450:4864:34::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5mQP-00000001nNb-3tlZ
	for linux-rockchip@lists.infradead.org;
	Sun, 13 Sep 2026 15:47:27 +0000
Received: by mail-ej2-x00.google.com with SMTP id a640c23a62f3a-c1971f5efc3so163075866b.0
        for <linux-rockchip@lists.infradead.org>; Sun, 13 Sep 2026 08:47:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789314444; cv=none;
        d=google.com; s=arc-20260327;
        b=N9KmWAl/cYnkpxr1RLZTnoDhS7MZl8ZRl9TymfbLP15ezeq1Nq7Owv1jtZqGDMv4+k
         nKdTyP6pDLLej1gepzCfQ9IyX3vrxySZBqwasI10XN3+1Zq4ZUElZrMAzou2a1/R5gO7
         f8YurLUMoAhg6kO+Huq+AUQ4vwQsEEWoQOotboJ5S0Q8xasaVjiHNaYtfFUar8rCER2T
         0Yut+Fn9TELDBTqkpX6J2nLQfSGfBd1OKzC3NEuCekmbX0iFxgmlGCjCfnpx+EZPcPbd
         KgYBBujRT5eIHEyq/qRxogfpOT/Rucuqf43+vhDHdbGtJMhZNs0iDOW5WrH8n67duWAs
         zx3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=xd4RtXYSQe4fX2yQzgQaQhaAGqt8/5t2s9pKA9e2Z/M=;
        fh=BEUX6XbG0ugPKDUGXvGpzrZRRw5pa7uPyEsC5Iz0Jmk=;
        b=U5G29nDcj+VwaCFDT+ZTEbxuSQ4BZUTAJv5EU/t3QB52HxMxGQunlTvYfMfHRlF/7d
         9mZ5RsGm3XA4Ae9EhD2VyIr7daB0sryjojjRXrbfQzZM54B1yLWQXuR4OMTWsWMxWPOv
         Cq2H2R82HKwfHWgzVT8SJl9/J4VcQEA77uzCZc5u2O1D49ZOQIRNLZPKYlilAK+gtCv4
         VSHD6hHOwNJNNyirfHTRKQXkSrWfe4D+A3+bLxDs2UGGe7SI4QdBBn78f8k1njSQsL4D
         kKGr+ImHSAc8eI24u7mtvbdQpC8huOIY6J/qXV7T/yrE3aZP5FnH7W2UiGuDFnxcmOff
         clzQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789314444; x=1789919244; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=xd4RtXYSQe4fX2yQzgQaQhaAGqt8/5t2s9pKA9e2Z/M=;
        b=jeH1xw/1hIjIYCXoK2I4CcR4x3LS+p4qpaBUn3IqW5jwC22yFPBAfdaNltTgGxusff
         R7qPXpsU5CsIs6EMI8R0ycMef8ElUre0henU/6rBGU/t1C7ggKSa8MY3VI0qstY4a/Ru
         OTjks994D8BjzDNiXsETXPPgbKmifC4AQgqqVBLfe0k1XVagshpbSiNE9E+dVEBJkPgQ
         K+4SZRgmuckEXHxS3Qp6YI0AMBnQdgQoMdIJWcHk/k1TLm927QsZ33yqArTzeyh5bWJL
         ALIrNkJ3gXw4E5c+0z038uRUNaqAtj9/lKFmhf81v/GYK0ZUwMbj/yJbJag9/nDIKH+B
         nLtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789314444; x=1789919244;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xd4RtXYSQe4fX2yQzgQaQhaAGqt8/5t2s9pKA9e2Z/M=;
        b=Qx2ha+k0xqn1f4knKt9hj/y4UqVyzduekGQZhsEiAyneVxf1wpkeewdv2KgVp3wPKP
         PJIv3jHrgQMCNBPSvdr1QNj7zsmi5Ir46o82LHDvxwfVcLPknW6yAirpWupMcNaRGR8J
         OAvzHOm9Cctrz1W+Dhr30SFQJWFCtlfJWW1azQ2q8+xVYpuop4HvjYl2rAeEEo0sNhIb
         KqBwOh2zotOjKyEjItw2hexZNDJWjFmTIeLL8CNpZ/SOKL42VvZi8bX+Pd70pJtdoQA2
         GPKvQ/sg0AXURw/AcxcEfAVSaJ+IXBSdGSu9xVJeO+Q0v8UfvGRAcEdx1YkccPJ5RUwS
         gjXA==
X-Forwarded-Encrypted: i=1; AKwUvBwF69GX1USIN/V3Ok6kJf7F/FtHvdawaq+jwDD3kXPqzUZcd7Isufw36PGYZvYdj5C2TWbk8jJcpuaBkDzrzA==@lists.infradead.org
X-Gm-Message-State: AFuF++m4WLrIfXrNWMKkQ3hA70xTpf8QWkY3VmDeoOud7uz63bynQNFm
	t3GSTvOadyRyaAM9fi5UgW0b6t2uCI9C1TdP/0OPi6Q7mvCKMJcetFzS74E6wDJATn4Y1gb1Kwt
	QAp3swVH/VkgEpG0RztdF7/CsalVKbZU=
X-Gm-Gg: AYBFou279f/p1bziTtgmVXlI7Xcs/H/Hl/uPgyErL0JiS63iuinyJHpI67qOSWOObqf
	erXfetth5jUIURNYWRRGHNOp0ZjwOmTbZIcPOz3nvUECG6O/CYn9TdNZ6TZYjAg+uU+H7vdO0+1
	dNLWAQh0gRYk5twz77krCcIwBo4Bt/D2bjMi0i6AUfWasPfTXScQsOnJH7UobhvT9P3rcpi0RZO
	1ZA1DUC4Qy/0hbkfyRpvSbW1zUa1xK51NzBpuPCHAwLURmSP6eOifLjmBj0GddX2c2GjaTP9Wt6
	Vci+7xf3m7WIptHCKaBpKCU5Tqlxb1GRPHTd3o/p7X33nCk0gZHDUSOZ44f2jH2O7tpR
X-Received: by 2002:a17:907:b049:20b0:c26:2f5e:29c7 with SMTP id
 a640c23a62f3a-c29856af6e3mr248244566b.7.1789314443704; Sun, 13 Sep 2026
 08:47:23 -0700 (PDT)
MIME-Version: 1.0
References: <20260907153713.2572547-7-coiaprant@gmail.com> <20260912201325.127009-1-kuba@kernel.org>
In-Reply-To: <20260912201325.127009-1-kuba@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Sun, 13 Sep 2026 23:47:12 +0800
X-Gm-Features: AcwNN1UukBh9R-kSgJT1DSG6HaucuFjaf0b71SnVjdkjmimZTMpjLzcMh3JEWAU
Message-ID: <CALj3r0h7ZQKPvMZbjpy0Cc=u0LvS+WAXUFNcsi+gWY9OxL+jfg@mail.gmail.com>
Subject: Re: [PATCH net-next v4 05/10] arm64: dts: rockchip: rk3568: add XPCS
 and fixed-clock nodes
To: Jakub Kicinski <kuba@kernel.org>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
	pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	heiko@sntech.de, vkoul@kernel.org, maxime.chevallier@bootlin.com, 
	mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com, 
	prabhakar.mahadev-lad.rj@bp.renesas.com, romain.gantois@bootlin.com, 
	hkallweit1@gmail.com, neil.armstrong@linaro.org, linux@armlinux.org.uk, 
	shawn.lin@rock-chips.com, david@ixit.cz, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_084726_038415_B1F036DC 
X-CRM114-Status: GOOD (  22.62  )
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

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDnmnIgxM+aXpeWRqOaX
pSAwNDoxM+WGmemBk++8mgo+Cj4gVGhpcyBpcyBhbiBBSS1nZW5lcmF0ZWQgcmV2aWV3IG9mIHlv
dXIgcGF0Y2guIFRoZSBodW1hbiBzZW5kaW5nIHRoaXMKPiBlbWFpbCBoYXMgY29uc2lkZXJlZCB0
aGUgQUkgcmV2aWV3IHZhbGlkLCBvciBhdCBsZWFzdCBwbGF1c2libGUuCj4gLS0tCj4gYXJtNjQ6
IGR0czogcm9ja2NoaXA6IHJrMzU2ODogYWRkIFhQQ1MgYW5kIGZpeGVkLWNsb2NrIG5vZGVzCj4K
PiBUaGlzIGFkZHMgdGhlIFJLMzU2OCBTeW5vcHN5cyBEZXNpZ25XYXJlIFhQQ1Mgbm9kZSAod2l0
aCBmb3VyIHBjcy1taWkKPiBzdWItbm9kZXMpIHBsdXMgdHdvIDEyNSBNSHogZml4ZWQtY2xvY2sg
bm9kZXMgdXNlZCBhcyBHTUFDIHJlZmVyZW5jZQo+IGNsb2Nrcy4gIFRoZSBYUENTIG5vZGUgYW5k
IGl0cyBzdWItbm9kZXMgYXJlIGRpc2FibGVkIGJ5IGRlZmF1bHQgYW5kIGFyZQo+IG1lYW50IHRv
IGJlIGNvbXBsZXRlZCBhbmQgZW5hYmxlZCBhdCB0aGUgYm9hcmQgbGV2ZWwuCj4KPiBBIGNvdXBs
ZSBvZiBxdWVzdGlvbnMgYWJvdXQgdGhlIG5ldyBub2RlcyBiZWxvdy4KPgo+ID4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpCj4gPiBpbmRleCAzYmM2NTNmMDI3ZjFmLi45
ODllMTY0YzBlYjM5IDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1NjguZHRzaQo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
NjguZHRzaQo+ID4gQEAgLTExMCw2ICsxMTAsNTEgQEAgc2F0YTA6IHNhdGFAZmMwMDAwMDAgewo+
ID4gICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ID4gICAgICAgfTsKPiA+Cj4g
PiArICAgICB4cGNzOiBwY3NAZmRhMDAwMDAgewo+ID4gKyAgICAgICAgICAgICBjb21wYXRpYmxl
ID0gInJvY2tjaGlwLHJrMzU2OC14cGNzIjsKPiA+ICsgICAgICAgICAgICAgI2FkZHJlc3MtY2Vs
bHMgPSA8MT47Cj4gPiArICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDA+Owo+ID4gKyAgICAg
ICAgICAgICByZWcgPSA8MHgwIDB4ZmRhMDAwMDAgMHgwIDB4MjAwMDAwPjsKPiA+ICsgICAgICAg
ICAgICAgY2xvY2tzID0gPCZjcnUgUENMS19YUENTPiwgPCZjcnUgQ0xLX1hQQ1NfRUVFPjsKPiA+
ICsgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiY3NyIiwgImVlZSI7Cj4gPiArICAgICAgICAg
ICAgIHBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJLMzU2OF9QRF9QSVBFPjsKPiA+ICsgICAgICAg
ICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsKPgo+IFtTZXZlcml0eTogTWVkaXVtXQo+IERvZXMg
dGhpcyBub2RlIHZhbGlkYXRlIGFnYWluc3QgdGhlIGJpbmRpbmcgYWRkZWQgZWFybGllciBpbiB0
aGUgc2FtZQo+IHNlcmllcz8gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQv
cGNzL3JvY2tjaGlwLWR3eHBjcy55YW1sCj4gbGlzdHMgcGh5cyBhbmQgcGh5LW5hbWVzIHVuY29u
ZGl0aW9uYWxseToKPgo+IHJlcXVpcmVkOgo+ICAgLSBjb21wYXRpYmxlCj4gICAtIHJlZwo+ICAg
LSAiI2FkZHJlc3MtY2VsbHMiCj4gICAtICIjc2l6ZS1jZWxscyIKPiAgIC0gY2xvY2tzCj4gICAt
IGNsb2NrLW5hbWVzCj4gICAtIHBoeXMKPiAgIC0gcGh5LW5hbWVzCj4gICAtIHBvd2VyLWRvbWFp
bnMKPgo+IFRoZSBub2RlIGhlcmUgc3VwcGxpZXMgbmVpdGhlciwgYW5kIGR0LXZhbGlkYXRlIGRv
ZXMgbm90IHNraXAgbm9kZXMgd2l0aAo+IHN0YXR1cyA9ICJkaXNhYmxlZCIsIHNvIGR0YnNfY2hl
Y2sgc2hvdWxkIHJlcG9ydCAiJ3BoeXMnIGlzIGEgcmVxdWlyZWQKPiBwcm9wZXJ0eSIgYW5kICIn
cGh5LW5hbWVzJyBpcyBhIHJlcXVpcmVkIHByb3BlcnR5IiBmb3IgZXZlcnkgcmszNTY4IGR0Ygo+
IHRoYXQgaW5jbHVkZXMgdGhpcyBkdHNpLgo+Cj4gQXQgdGhlIHRpcCBvZiB0aGUgc2VyaWVzIG9u
bHkgcmszNTY4LXBob3RvbmljYXQuZHRzIGZpbGxzIHRoZW0gaW46Cj4KPiAmeHBjcyB7Cj4gICAg
ICAgICBzdGF0dXMgPSAib2theSI7Cj4gICAgICAgICBwaHlzID0gPCZjb21icGh5MiBQSFlfVFlQ
RV9TR01JST47Cj4gICAgICAgICBwaHktbmFtZXMgPSAic2VyZGVzIjsKPiB9Owo+Cj4gc28gcmsz
NTY4LWV2YiwgcmszNTY4LXJvY2stM2EsIHJrMzU2OC1yb2MtcGMsIHJrMzU2OC1yYWR4YS1jbTNq
LAo+IHJrMzU2OC13b2xmdmlzaW9uLXBmNSBhbmQgZnJpZW5kcyB3b3VsZCBzdGlsbCBiZSBtaXNz
aW5nIHRoZW0uCj4KPiBJZiB3aGljaCBjb21icGh5IGNhcnJpZXMgU0dNSUkgaXMgZ2VudWluZWx5
IGEgYm9hcmQtbGV2ZWwgY2hvaWNlLCBzaG91bGQKPiBwaHlzL3BoeS1uYW1lcyBiZSBtb3ZlZCBv
dXQgb2YgdGhlIHVuY29uZGl0aW9uYWwgcmVxdWlyZWQ6IGxpc3QgaW4gdGhlCj4gYmluZGluZyBp
bnN0ZWFkLCBvciBzaG91bGQgdGhlIGR0c2kgcHJvdmlkZSBhIGRlZmF1bHQ/CgpBcyBJIHJlcGxp
ZWQgaW4gdGhlIGVhcmxpZXIgcGF0Y2gsIGR0YnNfY2hlY2sgYW5kIENIRUNLX0RUQlMgb25seQp2
YWxpZGF0ZSByZXF1aXJlZCBwcm9wZXJ0aWVzIGZvciBlbmFibGVkIG5vZGVzLCBhcyBjb25maXJt
ZWQgYnkgUm9iCkhlcnJpbmcuIFRoZSB4cGNzIG5vZGUgaW4gcmszNTY4LmR0c2kgaXMgc3RhdHVz
ID0gImRpc2FibGVkIiwgc28KYm9hcmRzIHRoYXQgaW5jbHVkZSByazM1NjguZHRzaSB3aXRob3V0
IGVuYWJsaW5nIFhQQ1Mgd2lsbCBub3QgdHJpZ2dlcgphbnkgdmFsaWRhdGlvbiB3YXJuaW5ncy4g
T25seSBib2FyZHMgdGhhdCBlbmFibGUgaXQgbmVlZCB0byBwcm92aWRlCnBoeXMgYW5kIHBoeS1u
YW1lcywgYW5kIHRoZXkgZG8gc28gYXQgdGhlIGJvYXJkIGxldmVsLgoKVGhlIHBoeXMvcGh5LW5h
bWVzIHByb3BlcnRpZXMgY2Fubm90IGJlIG1vdmVkIGludG8gcmszNTY4LmR0c2kgYW55d2F5LApi
ZWNhdXNlIHRoZSBTZXJEZXMgY29ubmVjdGlvbiBpcyBib2FyZC1zcGVjaWZpYzogc29tZSBib2Fy
ZHMgdXNlCmNvbWJwaHkxIGZvciBTR01JSSwgb3RoZXJzIHVzZSBjb21icGh5MiAobGlrZSBQaG90
b25pY2F0KS4KCj4gPiArICAgICB4cGNzX2dtYWMwX2NsazogeHBjcy1nbWFjMC1jbG9jayB7Cj4g
PiArICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiZml4ZWQtY2xvY2siOwo+ID4gKyAgICAgICAg
ICAgICBjbG9jay1mcmVxdWVuY3kgPSA8MTI1MDAwMDAwPjsKPiA+ICsgICAgICAgICAgICAgY2xv
Y2stb3V0cHV0LW5hbWVzID0gImNsa19nbWFjMF94cGNzX21paSI7Cj4gPiArICAgICAgICAgICAg
ICNjbG9jay1jZWxscyA9IDwwPjsKPiA+ICsgICAgIH07Cj4gPiArCj4gPiArICAgICB4cGNzX2dt
YWMxX2NsazogeHBjcy1nbWFjMS1jbG9jayB7Cj4gPiArICAgICAgICAgICAgIGNvbXBhdGlibGUg
PSAiZml4ZWQtY2xvY2siOwo+ID4gKyAgICAgICAgICAgICBjbG9jay1mcmVxdWVuY3kgPSA8MTI1
MDAwMDAwPjsKPiA+ICsgICAgICAgICAgICAgY2xvY2stb3V0cHV0LW5hbWVzID0gImNsa19nbWFj
MV94cGNzX21paSI7Cj4gPiArICAgICAgICAgICAgICNjbG9jay1jZWxscyA9IDwwPjsKPiA+ICsg
ICAgIH07Cj4KPiBbU2V2ZXJpdHk6IExvd10KPiBUaGVzZSB0d28gbm9kZSBuYW1lcyB0YWtlIHRo
ZSBkZXByZWNhdGVkIGJyYW5jaCBvZiB0aGUgZml4ZWQtY2xvY2sKPiAkbm9kZW5hbWUgc2NoZW1h
LiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL2ZpeGVkLWNsb2NrLnlh
bWwKPiBoYXM6Cj4KPiAgICRub2RlbmFtZToKPiAgICAgYW55T2Y6Cj4gICAgICAgLSBkZXNjcmlw
dGlvbjoKPiAgICAgICAgICAgUHJlZmVycmVkIG5hbWUgaXMgJ2Nsb2NrLTxmcmVxPicgd2l0aCA8
ZnJlcT4gYmVpbmcgdGhlIG91dHB1dAo+ICAgICAgICAgICBmcmVxdWVuY3kgYXMgZGVmaW5lZCBp
biB0aGUgJ2Nsb2NrLWZyZXF1ZW5jeScgcHJvcGVydHkuCj4gICAgICAgICBwYXR0ZXJuOiAiXmNs
b2NrLShbMC05XSt8W2EtejAtOS1dKykkIgo+ICAgICAgIC0gZGVzY3JpcHRpb246IEFueSBuYW1l
IGFsbG93ZWQKPiAgICAgICAgIGRlcHJlY2F0ZWQ6IHRydWUKPgo+IHhwY3MtZ21hYzAtY2xvY2sg
YW5kIHhwY3MtZ21hYzEtY2xvY2sgZG8gbm90IG1hdGNoIHRoZSBwcmVmZXJyZWQKPiBwYXR0ZXJu
LCBzbyB0aGV5IGxhbmQgb24gdGhlICJBbnkgbmFtZSBhbGxvd2VkIiBicmFuY2guICBOZXdlciBS
b2NrY2hpcAo+IGR0c2kgZmlsZXMgdXNlIHRoZSBwcmVmZXJyZWQgZm9ybSBhbHJlYWR5LCBmb3Ig
ZXhhbXBsZSByazM1MjguZHRzaSB3aXRoCj4geGluMjRtOiBjbG9jay14aW4yNG0gYW5kIGdtYWMw
X2NsazogY2xvY2stZ21hYzUwbS4KPgo+IENvdWxkIHRoZXNlIGJlIG5hbWVkIGNsb2NrLXhwY3Mt
Z21hYzAgYW5kIGNsb2NrLXhwY3MtZ21hYzE/ICBUaGUgbGFiZWxzCj4geHBjc19nbWFjMF9jbGsg
LyB4cGNzX2dtYWMxX2NsayBhbmQgYWxsIHJlZmVyZW5jZXMgd291bGQgc3RheSB0aGUgc2FtZS4K
CllvdSdyZSByaWdodCwgeHBjcy1nbWFjMC1jbG9jayBhbmQgeHBjcy1nbWFjMS1jbG9jayBkbyBu
b3QgbWF0Y2ggdGhlCnByZWZlcnJlZCBjbG9jay08ZnJlcT4gcGF0dGVybiBpbiBmaXhlZC1jbG9j
ay55YW1sLiBJJ2xsIHJlbmFtZSB0aGVtIHRvCmNsb2NrLXhwY3MtZ21hYzAgYW5kIGNsb2NrLXhw
Y3MtZ21hYzEuIFRoZSBsYWJlbHMgeHBjc19nbWFjMF9jbGsgYW5kCnhwY3NfZ21hYzFfY2xrIHdp
bGwgYmUgbWF0Y2ggY2xvY2stb3V0cHV0LW5hbWVzLgoKQmVzdCwKQ29pYQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
