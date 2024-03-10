Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07145C54E58
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Mar 2024 13:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r0UTVL4wXy6mNwEJrZWeJRFrQ2wrNuKaYLJN4cHZSc0=; b=4KI4mnjpRLbcOD
	YgFIi8LW6wnckRADZ6fiuuJ1YBTIPRtnGEipF9vkpqPJMZu6dgdHw0ZnqfvRHFobHYeQwodfDEuHR
	iyH6PE6doYPqdE7F4Z9LvWnI8aMMYi6fKuevVvv04O+Z8Gz9KsVnad0uOYcv4HFwt7SXW4O0d6E6/
	zS2cYyq7DEMSFKdWx3jchrUKHuy+IWlDJaJfQa/MfTT+y4erBQSWU+uS0bDDgVUJhCGh0DTu5Mx0i
	MOLvY4npLtZvYdQdKqDVUrDMsqUDoRslTBaNx6/k8die9YNQzPBdw3nDWbbsdEoIF2FrI2lTMxNuK
	O2K/sm8nOJpBx9Vs+jVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjIxK-0000000FnmR-3nAS;
	Sun, 10 Mar 2024 13:11:10 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjIxG-0000000FnjY-1sND
	for linux-rockchip@lists.infradead.org;
	Sun, 10 Mar 2024 13:11:08 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-1dbd32cff0bso26156365ad.0
        for <linux-rockchip@lists.infradead.org>; Sun, 10 Mar 2024 06:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710076252; x=1710681052; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=au7P4O6xCDCWvwO0tgkblYFVdWtoYF+Jl11SBGPbJW4=;
        b=WjnrxH+/E4PTzHPx9IRrOLMQXd9r7unBI57j68DxTLzt7dh3l2IDVsyCXt3vJainmO
         qOxh8cubkKocAiCdHSeMdf4COKSnMeKfh+oK+AYcs4MLWK5bbqOt3FQ5bLBu2eFvx1FT
         cJf/m+qqAg+QXe7CzjJEqXdSw4NO/FXcQE9xGw+7jqZ1SpDpY1wXGYWe+vvbsGjCMH09
         Kq6GdG+ZftokADqbD/YzZD2nsv/vIGKYbnU3edCzd9mmpwBRD7hwXkw5DKVWNOHaniFc
         AG7UvdiDbFxrBRItnxlL6/ZfLT0MJn6E0nHenfshmASLSB8gc7IDcvQ0VEYWcEFpX9GF
         xHdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710076252; x=1710681052;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=au7P4O6xCDCWvwO0tgkblYFVdWtoYF+Jl11SBGPbJW4=;
        b=G28fSwWIE/YbX2ZzGfAZEVjstuOC65LqpPqv2px6ru8r6mhN/6UNePf5DEopFxc8jx
         F6fmz3OYwnb6WmOEIge0MsoJMVpmBbHsaZ55Hpw5EM4UW3+tHY+yTiifGJvIXWfuGDQ1
         Aiu8MQeTha3SMIz/EmOMZvgbkonK23gp0D1/Y/5UTmJ/7n5qyooyx38UBfDWW74OJIZQ
         cyrlKNOQnQ0dC/vi+v/FdF1SKX8tSCGks5UHMzLRi2HHTdspSSfhDhRh674V25A41JEY
         novu4l5MxjvMwXayByjz74STKIbfHg9w7jZvFlg0jChwGDOhGmHpI3Fq+MAcHFmAG1Uh
         iuSQ==
X-Forwarded-Encrypted: i=1; AJvYcCWI/Y1i3vLmUeb71YRFjEviOqDzc4OKAGIBy09w1F0TdGlvaYRlLOia6p0ZL9/uuikYFm5rmietxjiLXzF4lw5PLhXBceThRxTk6sE9P/Dv2X53
X-Gm-Message-State: AOJu0YxddJJg/95L9QnyF3QoJOd0TGvXPI8mpgFGih6TGHsaTAdX4nom
	DGcqRFxEnLOpahwUS0/AYoeHKGSxdKK6swIyUXkUEUVwVnAgM2D6NweaTZk7Ow==
X-Google-Smtp-Source: AGHT+IFuv9OaGeFP6KlGcGd9oQzt86zGm2DdkpeYjp6iGs11PIU4RxOlG2h6k/PX/NU8+J70mccttg==
X-Received: by 2002:a17:902:c952:b0:1db:f6b0:92d with SMTP id i18-20020a170902c95200b001dbf6b0092dmr4686762pla.6.1710076252234;
        Sun, 10 Mar 2024 06:10:52 -0700 (PDT)
Received: from thinkpad ([120.138.12.86])
        by smtp.gmail.com with ESMTPSA id i14-20020a17090332ce00b001dd621111e2sm2642256plr.194.2024.03.10.06.10.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Mar 2024 06:10:51 -0700 (PDT)
Date: Sun, 10 Mar 2024 18:40:43 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@debian.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Lei Chuanhua <lchuanhua@maxlinear.com>,
	Jesper Nilsson <jesper.nilsson@axis.com>,
	Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Damien Le Moal <dlemoal@kernel.org>, Rob Herring <robh@kernel.org>,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Add error messages in .probe()s
 error paths
Message-ID: <20240310131043.GD3390@thinkpad>
References: <20240227141256.413055-2-ukleinek@debian.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240227141256.413055-2-ukleinek@debian.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240310_061106_524709_C0F2CF78 
X-CRM114-Status: GOOD (  23.67  )
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

T24gVHVlLCBGZWIgMjcsIDIwMjQgYXQgMDM6MTI6NTRQTSArMDEwMCwgVXdlIEtsZWluZS1Lw7Zu
aWcgd3JvdGU6Cj4gRHJpdmVycyB0aGF0IHNpbGVudGx5IGZhaWwgdG8gcHJvYmUgcHJvdmlkZSBh
IGJhZCB1c2VyIGV4cGVyaWVuY2UgYW5kCj4gbWFrZSBpdCB1bm5lY2Vzc2FyaWx5IGhhcmQgdG8g
ZGVidWcgc3VjaCBhIGZhaWx1cmUuIEZpeCBpdCBieSB1c2luZwo+IGRldl9lcnJfcHJvYmUoKSBp
bnN0ZWFkIG9mIGEgcGxhaW4gcmV0dXJuLgo+IAo+IFJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5l
ciA8aGVpa29Ac250ZWNoLmRlPgo+IFNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1
a2xlaW5la0BkZWJpYW4ub3JnPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8
bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+CgotIE1hbmkKCj4gLS0tCj4gSGVsbG8s
Cj4gCj4gY2hhbmdlcyBzaW5jZSAoaW1wbGljaXQpIHYxLCBzZW50IHdpdGggTWVzc2FnZS1JZDoK
PiAyMDI0MDIyNzExMTgzNy4zOTU0MjItMi11a2xlaW5la0BkZWJpYW4ub3JnOgo+IAo+ICAtIHVz
ZSBkZXYgaW5zdGVhZCBvZiByb2NrY2hpcC0+cGNpLmRldiBhcyBub3RpY2VkIGJ5IFNlcmdlIFNl
bWluLgo+ICAtIGFkZGVkIFJldmlld2VkLWJ5OiB0YWcgZm9yIEhlaWtvLiBJIGFzc3VtZSBoZSBh
Z3JlZXMgdG8gYWJvdmUKPiAgICBpbXByb3ZlbWVudCBhbmQgYWRkaW5nIHRoZSB0YWcgZGVzcGl0
ZSB0aGUgY2hhbmdlIGlzIGZpbmUuCj4gCj4gQmVzdCByZWdhcmRzCj4gVXdlCj4gCj4gIGRyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYyB8IDIxICsrKysrKysrKysr
Ky0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHct
cm9ja2NoaXAuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAu
Ywo+IGluZGV4IGQ2ODQyMTQxZDM4NC4uYTEzY2E4M2NlMjYwIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+ICsrKyBiL2RyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+IEBAIC0yMjUsMTEgKzIyNSwx
NSBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfY2xrX2luaXQoc3RydWN0IHJvY2tjaGlwX3Bj
aWUgKnJvY2tjaGlwKQo+ICAKPiAgCXJldCA9IGRldm1fY2xrX2J1bGtfZ2V0X2FsbChkZXYsICZy
b2NrY2hpcC0+Y2xrcyk7Cj4gIAlpZiAocmV0IDwgMCkKPiAtCQlyZXR1cm4gcmV0Owo+ICsJCXJl
dHVybiBkZXZfZXJyX3Byb2JlKGRldiwgcmV0LCAiZmFpbGVkIHRvIGdldCBjbG9ja3NcbiIpOwo+
ICAKPiAgCXJvY2tjaGlwLT5jbGtfY250ID0gcmV0Owo+ICAKPiAtCXJldHVybiBjbGtfYnVsa19w
cmVwYXJlX2VuYWJsZShyb2NrY2hpcC0+Y2xrX2NudCwgcm9ja2NoaXAtPmNsa3MpOwo+ICsJcmV0
ID0gY2xrX2J1bGtfcHJlcGFyZV9lbmFibGUocm9ja2NoaXAtPmNsa19jbnQsIHJvY2tjaGlwLT5j
bGtzKTsKPiArCWlmIChyZXQpCj4gKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCByZXQsICJm
YWlsZWQgdG8gZW5hYmxlIGNsb2Nrc1xuIik7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gIH0KPiAgCj4g
IHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9yZXNvdXJjZV9nZXQoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldiwKPiBAQCAtMjM3LDEyICsyNDEsMTQgQEAgc3RhdGljIGludCByb2NrY2hpcF9w
Y2llX3Jlc291cmNlX2dldChzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2LAo+ICB7Cj4gIAly
b2NrY2hpcC0+YXBiX2Jhc2UgPSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3VyY2VfYnluYW1l
KHBkZXYsICJhcGIiKTsKPiAgCWlmIChJU19FUlIocm9ja2NoaXAtPmFwYl9iYXNlKSkKPiAtCQly
ZXR1cm4gUFRSX0VSUihyb2NrY2hpcC0+YXBiX2Jhc2UpOwo+ICsJCXJldHVybiBkZXZfZXJyX3By
b2JlKCZwZGV2LT5kZXYsIFBUUl9FUlIocm9ja2NoaXAtPmFwYl9iYXNlKSwKPiArCQkJCSAgICAg
ImZhaWxlZCB0byBtYXAgYXBiIHJlZ2lzdGVyc1xuIik7Cj4gIAo+ICAJcm9ja2NoaXAtPnJzdF9n
cGlvID0gZGV2bV9ncGlvZF9nZXRfb3B0aW9uYWwoJnBkZXYtPmRldiwgInJlc2V0IiwKPiAgCQkJ
CQkJICAgICBHUElPRF9PVVRfSElHSCk7Cj4gIAlpZiAoSVNfRVJSKHJvY2tjaGlwLT5yc3RfZ3Bp
bykpCj4gLQkJcmV0dXJuIFBUUl9FUlIocm9ja2NoaXAtPnJzdF9ncGlvKTsKPiArCQlyZXR1cm4g
ZGV2X2Vycl9wcm9iZSgmcGRldi0+ZGV2LCBQVFJfRVJSKHJvY2tjaGlwLT5yc3RfZ3BpbyksCj4g
KwkJCQkgICAgICJmYWlsZWQgdG8gZ2V0IHJlc2V0IGdwaW9cbiIpOwo+ICAKPiAgCXJvY2tjaGlw
LT5yc3QgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfYXJyYXlfZ2V0X2V4Y2x1c2l2ZSgmcGRldi0+ZGV2
KTsKPiAgCWlmIChJU19FUlIocm9ja2NoaXAtPnJzdCkpCj4gQEAgLTMyMCwxMCArMzI2LDkgQEAg
c3RhdGljIGludCByb2NrY2hpcF9wY2llX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCj4gIAkJcm9ja2NoaXAtPnZwY2llM3YzID0gTlVMTDsKPiAgCX0gZWxzZSB7Cj4gIAkJcmV0
ID0gcmVndWxhdG9yX2VuYWJsZShyb2NrY2hpcC0+dnBjaWUzdjMpOwo+IC0JCWlmIChyZXQpIHsK
PiAtCQkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gZW5hYmxlIHZwY2llM3YzIHJlZ3VsYXRvclxu
Iik7Cj4gLQkJCXJldHVybiByZXQ7Cj4gLQkJfQo+ICsJCWlmIChyZXQpCj4gKwkJCXJldHVybiBk
ZXZfZXJyX3Byb2JlKGRldiwgcmV0LAo+ICsJCQkJCSAgICAgImZhaWxlZCB0byBlbmFibGUgdnBj
aWUzdjMgcmVndWxhdG9yXG4iKTsKPiAgCX0KPiAgCj4gIAlyZXQgPSByb2NrY2hpcF9wY2llX3Bo
eV9pbml0KHJvY2tjaGlwKTsKPiAKPiBiYXNlLWNvbW1pdDogNjYxMzQ3NmUyMjVlMDkwY2M5YWFk
NDliZTdmYTUwNGUyOTBkZDMzZAo+IC0tIAo+IDIuNDMuMAo+IAoKLS0gCuCuruCuo+Cuv+CuteCu
o+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
