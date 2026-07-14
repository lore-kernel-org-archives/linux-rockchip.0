Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 769FDC43458
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 23:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3VuJXZCewJiAHwNybsd9c8jjA9ZKtHnVwTKwIDiZqRw=; b=fy/soplTnlzbAV
	72mU6VCsg/OdlrXr/agdDBGXjsiIy7WpFAlL+1cp2HarWXz746qJc2GEnwJSASY6lsE+yIJ9CwMzM
	wlMEPUHi3hRfSKVO1YTVNTNGaBe63+U13Mo+w7Vs8lXfySpSuXzbVmSpTrHFXp7ZI39w/QTnB9ga3
	Wjfc7PPmbtD6vLhI8aNjtNC4bpxTTi7xUObkIv7csJzKbMrkxvlv2wD+WZ3wPj2cGWZ3rxoX66bQM
	lNUp50umH1jBfLAiC3r5YNwTthdw+qealVVf30Qx7K3Lfkg6+LfVUthoKaZwgZlXvce2VDel+OFiq
	ckcR0hhGyMDLcOfuXLQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjmC4-0000000DRJ4-3BKg;
	Tue, 14 Jul 2026 23:05:40 +0000
Received: from mail-ed2-x07.google.com ([2a00:1450:4864:33::7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjmC0-0000000DRHV-2kik
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 23:05:39 +0000
Received: by mail-ed2-x07.google.com with SMTP id 4fb4d7f45d1cf-69c42e7735eso3102526a12.0
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jul 2026 16:05:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784070335; cv=none;
        d=google.com; s=arc-20260327;
        b=sUADOAP7Qha93GgRtjS6hJQff3XaRDipDrKg3Aaf26UDRQ+6C35OMzeY2L7DryJbVY
         vW7osQ1nmnjjkiylw4QklrgY39T7q/RXjn4UXsDHBHDqxgoNadK97VFEXxSowvqxl3Hi
         Y85pJcrGyMR/xSsy5GhotGQnpwRNOtwkJQrtFuvsZSr/Nm1EkiV4LMfKfOmsNAdcybDB
         97Bljxc3NLmO8FQsWggne1hfPeI4OBb+wViMua4glixSjNsI+CAiKB39VqcTI3hBPrdp
         VKWp6JfdT8m5IITmCfsKN/ObcWwcAS0KEUXomzjGn67CaPoCTYY+4+5EqDCgUK1NoL28
         eLmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=5yS0n4m24nQ7cS0uAO0etHXioBeE2HNrxAIlQrrccBM=;
        fh=xYko2LJLNToTtHoXfxkH593N5e5BX+4vVVwHksH/Zl0=;
        b=qKH7Q4nYWqsLApovbdOe6evFMC+9uqFfvZdyUk3ZdXB2VIRQ99PhAjwK5uUoj/lxmS
         7unWvZ+vSF02Q0WUPsYR9iGg06/XUzu7HL1XODWHihKQMApcxL+SeDQjKMkm/sj8cSp6
         Juyy5AbVcvPUmO2saLzpOOx+wRvleszu1oO1uZEPMy3GJaNR9Y1M9MDdGNH9W9LhkjEK
         8+W9lXT5ehcb0+Y72IxUnNqGIyVEf1YZ/NH2wIn83uEtVDji83j8cVZ3w90SdHWbo9V1
         OdgXJUc5VfyUHfuIlhXFagT4VtiEMjYwPKjBA1DrsfEZR0ydnDd7TM7bz1RRMwIktM0M
         tzLw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784070335; x=1784675135; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=5yS0n4m24nQ7cS0uAO0etHXioBeE2HNrxAIlQrrccBM=;
        b=Rzsc2+sbGxInP4b0av+mGjxvCQDJWfCYsPbiJhKh5gmvrtmJh0yOZkVSmXFn+hlFez
         ovtWEdBflIhWCL/pi4o52Qozbgej/wXz6dbtgCY/9UqHBcm/NGqjPxkb2qovPshtX+gi
         CjHXJloc6XH0RgzwZXD7fagUrrNUi23O1/GvVZagtHk1QY4K2TSGZXvAo0nFmxlGAQOQ
         nJniQejF/H5iKm4stRebQBrcO9ayJQZUffvwfkft6F4o6ON0fcAYuHZQ76Hk4RXSdLmg
         /eXgfdmWC1VYFoNcw0v4z76uVgrGiPM4xcH+zGPmrgTn5Ph0pLNeaOnP99Hm6Yit2Uvw
         aedg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784070335; x=1784675135;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5yS0n4m24nQ7cS0uAO0etHXioBeE2HNrxAIlQrrccBM=;
        b=JGfsK9cIiI9my9ssVUENbEJqJgloJ6hAiTH1iT5zaY3OXCtzDzQmg/Tk+JOmBwLzCi
         JPWNyuli+VDY+hb4kK79OOUjpyc1/dOj4tmOqWqLydiZna1l9iSNY0DqQCs3VE/nIONJ
         WpHZKKI8wRPdgly9XwB2+GRgQ5oG2OYAE2CyHjGxD8tp/4jUMEmuixHmMEtUMiKeoMV9
         EoNfRHtCgCm3lSj3vb4yiGaiT7NCZQQM/tPJkMTow1jUN/ZJeBNTxK4/FqwuV65TGzD4
         R/SBgvL7AjYsbPGp1Swf4rTsxQS2/Eq2NPRCnqcIvzBg8tR+Jtc4SOoWFPrXeji3CG3A
         VOhQ==
X-Forwarded-Encrypted: i=1; AHgh+RpOI48jjNvL0f+oN2KSoWhZmhA4ThYcipgT/7aCHIUJIZrX+IETRZ2YhCmrp0T+3+M2Bn+McG3B/kQ2g4We3A==@lists.infradead.org
X-Gm-Message-State: AOJu0YxK0WmSMZRCTl80BSCv3fyb3EVDi267R/WUNix0CX/lGWPdTeDI
	IgZ3Nsj5TO1uCv9GErXauP1wxxPg14TgtmYcxDknrU56f8BvWH+ZjJOgPUc6E8Il47y/iKR+US7
	y3LxgJjLBH7ZY8RCO7HgsC6beZd/kBW0=
X-Gm-Gg: AfdE7cmfJAtonftApsvyxNFCp5+vTHL6I2/lyQiYAld2mflp6RmbJv4NJe5HhH0xZIJ
	rGTBXPjhyzv6jw53qUPokMt01xP+kuRBEcBj7QdkILJaIiJSSncMr/rncwnd8xbKj6Qd7BtHmlB
	YbdnOFNmh24wqo7AMlCJeCeCMduVxfB62KBBVrjvu3olqmrqjdGO4UoFxKqm4ETXTy3v5y5ozoS
	9Hx+XQi5ERDzX/H0AC159fFs9beTy55/ma8YcPu8q/QAR2wrSN9dyBgWufylm675ieJOgPQ2bnI
	h0IhTGZKew==
X-Received: by 2002:a17:907:3d55:b0:c15:efb1:9ff7 with SMTP id
 a640c23a62f3a-c16616ad29bmr332320166b.28.1784070334544; Tue, 14 Jul 2026
 16:05:34 -0700 (PDT)
MIME-Version: 1.0
References: <20260714191341.690906-1-coiaprant@gmail.com> <20260714191341.690906-7-coiaprant@gmail.com>
 <464cbdf3-2e9e-43ea-b30a-75b3d1b8a188@lunn.ch>
In-Reply-To: <464cbdf3-2e9e-43ea-b30a-75b3d1b8a188@lunn.ch>
From: Coia Prant <coiaprant@gmail.com>
Date: Wed, 15 Jul 2026 07:05:23 +0800
X-Gm-Features: AUfX_mw_zrKoDsMO8kJR8iRpLq9HGKaiImf5TsHlB4TM3nCjyfFFksGlOJoy3Z8
Message-ID: <CALj3r0jdkDEjpO+7NOTGs+wgukKvD=fzFn4ewpurxxPswCE5GA@mail.gmail.com>
Subject: Re: [RFC PATCH 06/10] net: pcs: xpcs: improve SGMII AN state handling
 for Rockchip RK3568
To: Andrew Lunn <andrew@lunn.ch>
Cc: kuba@kernel.org, davem@davemloft.net, edumazet@google.com, 
	pabeni@redhat.com, andrew+netdev@lunn.ch, robh@kernel.org, krzk+dt@kernel.org, 
	heiko@sntech.de, netdev@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, Jiawen Wu <jiawenwu@trustnetic.com>, 
	Mengyuan Lou <mengyuanlou@net-swift.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_160536_716937_A6C44C46 
X-CRM114-Status: GOOD (  15.77  )
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

QW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPiDkuo4yMDI25bm0N+aciDE15pel5ZGo5LiJIDA2
OjQ05YaZ6YGT77yaCj4KPiBPbiBXZWQsIEp1bCAxNSwgMjAyNiBhdCAwMzowODozNEFNICswODAw
LCBDb2lhIFByYW50IHdyb3RlOgo+ID4gQ29tbWl0IDJhMjJiN2FlMmZhMyAoIm5ldDogcGNzOiB4
cGNzOiBhZGFwdCBXYW5neHVuIE5JQ3MgZm9yIFNHTUlJIG1vZGUiKQo+Cj4gWW91IGRvIG5vdCBh
cHBlYXIgdG8gQ2M6IHRoZSBXYW5neHVuIE5JQyBwZW9wbGUuIEl0IHdvdWxkIGJlIGdvb2QgdG8K
PiBoYXZlIHRoZXJlIGNvbW1lbnRzIG9uIHRoaXMgY2hhbmdlLgoKSSBhcG9sb2dpemU7IHRoZSBv
dXRwdXQgZnJvbSBnZXRfbWFpbnRhaW5lci5wbCBpcyB2ZXJ5IGxvbmcuIEnigJl2ZQpoZWFyZCB0
aGF0IGhhdmluZyB0b28gbWFueSByZWNpcGllbnRzIGNhbiBjYXVzZSB0aGUgUEFUQ0ggdG8gYmUK
cmVqZWN0ZWQgYnkgdGhlIExLTUwgbWFpbCBzZXJ2ZXIuCgpJIGhhdmUgYWRkZWQgV2FuZ3h1biBt
YWludGFpbmVyIChKaWF3ZW4gV3UgPGppYXdlbnd1QHRydXN0bmV0aWMuY29tPgphbmQgTWVuZ3l1
YW4gTG91IDxtZW5neXVhbmxvdUBuZXQtc3dpZnQuY29tPikgdG8gdGhlIENDIGxpc3QuCgo+ID4g
Rml4ZXM6IDJhMjJiN2FlMmZhMyAoIm5ldDogcGNzOiB4cGNzOiBhZGFwdCBXYW5neHVuIE5JQ3Mg
Zm9yIFNHTUlJIG1vZGUiKQo+ID4gU2lnbmVkLW9mZi1ieTogQ29pYSBQcmFudCA8Y29pYXByYW50
QGdtYWlsLmNvbT4KPgo+IFBsZWFzZSBkb24ndCBtaXggZml4ZWQgYW5kIG5ldyBjb2RlLiBJcyB0
aGlzIGEgcmVhbCBmaXg/IFNob3VsZCBpdCBiZQo+IGJhY2sgcG9ydGVkIHRvIHN0YWJsZT8KCkkg
YW0gbm90IHN1cmUgaWYgdGhpcyBpcyBhIHNwZWNpZmljIGNoYXJhY3RlcmlzdGljIG9mIFdhbmd4
dW4gTklDcywgYXMKSSBkbyBub3QgaGF2ZSBhbnkgYXZhaWxhYmxlIGZvciB0ZXN0aW5nLgoKVGhl
IGJlaGF2aW9yIG9mIHRoZSBSb2NrY2hpcCBEVyBYUENTIElQIGNvcmUgbWF0Y2hlcyB3aGF0IGlz
IGRlc2NyaWJlZAppbiB0aGUgY29tbWl0IG1lc3NhZ2UgKGV2ZW4gdGhvdWdoIHBoeWxpbmsgYnJp
bmdzIHRoZSBsaW5rIHRvIGRvd24KYmFzZWQgb24gdGhlIHBoeWRldiBsaW5rIHN0YXR1cykuCgpU
aGlzIGFwcGVhcnMgdG8gYmUgYSBidWcgKGF0IGxlYXN0IG9uIFJvY2tjaGlwIHBsYXRmb3Jtcykg
b3IgV2FuZ3h1bgpOSUNzIGZlYXR1cmVzLgoKSG93ZXZlciwgSSBjYW5ub3QgY29uZmlybSB3aGV0
aGVyIFdhbmd4dW4gTklDcyBiZWhhdmUgdGhlIHNhbWUgd2F5LgpUaGVyZWZvcmUsIEkgaGF2ZSBr
ZXB0IHRoZWlyIGNvZGUgYXMgaXMgZm9yIG5vdy4KCkNvdWxkIGEgV2FuZ3h1biBOSUNzIG1haW50
YWluZXIgcHJvdmlkZSBzb21lIGZlZWRiYWNrIGJhc2VkIG9uIHRlc3Rpbmc/CgpJZiB3ZSBjYW4g
Y29uZmlybSB0aGF0IHRoaXMgaXMgaW5kZWVkIGEgYnVnLCBJIGNhbiBzdWJtaXQgYSBzZXBhcmF0
ZSBmaXguCgpJIHdvdWxkIGdyZWF0bHkgYXBwcmVjaWF0ZSBpdC4KClRoYW5rcy4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
