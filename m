Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D5E3C87FCF
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Aug 2025 08:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jmgUbFQDWYfggn+4CfRZ1+kJsmWIRnvpPlD95nZRldI=; b=Uk19XhGtDLv2X+
	yitz9w5w1P+kSJMGm2q+cVMzkohkUPogHvGEW1BTGwzbYaZyvWID3oUr38pkJscxd+0epzXvVbVqA
	Koc6F3/ooVOobF8pznMI8zolbhkvY0/GG+PtKJ8hHkFUXHCxKpiWq+OufBuWaKLgWLccMb/Ha9nsB
	wWHC4C4zyDn7iVUWxlXF9vJSJxhG+bBm9L3ME+2etE7xbBPUaLPbjUImyGr/PC1Uk5OCFCVdrgDtc
	gIRVFhCvzWiQwXDiv1C2zG7w07B1qIOCsGjiViOmvxL0tZhGkJAiSD/szRf8/pJoG7+1upE4r2ZYZ
	0Yc3nAKnXwH1jNwIHu+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvaY-0000000HXsE-3uZz;
	Thu, 07 Aug 2025 08:03:02 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvWS-0000000HX9g-3ZXE;
	Thu, 07 Aug 2025 07:58:49 +0000
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-70a57a8ffc3so6817397b3.0;
        Thu, 07 Aug 2025 00:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754553528; x=1755158328; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DDU4mUfLGa/kC/rD4398PtK/yjh8S6aRiKIZIanDiL0=;
        b=jXukStQVA7a0dluYjh5Enk9gp/Du4aRN7Q7FLkqaU9HOtrgTAjQC/kg+LBUj16tJ8J
         9L4gebhnLpDdNIf3wnVm5qcU+5ViMxdIlcQoeFZqKnE1rEIrp4r/xvXd1ie4HiZCjzNl
         SlO3H+yxdoD5oDwcCJEbX28a1sIqvDjt3KB+lPiqJcxmQIp1PJDT2qhzu2DEuar9U/9i
         PXkHOog0z28wSmCixCTHRs82mTbxVqE/2lLhetZ00u6B80AWM/WedYNSTR30Tiwmnj5j
         zWeGNjRwal7CVfRpIa6npswgKOEv1TBXW0GRvHmdtDFqCqTBOuQe3dZLWJJ2dEf2H+Ta
         xKXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754553528; x=1755158328;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DDU4mUfLGa/kC/rD4398PtK/yjh8S6aRiKIZIanDiL0=;
        b=Puh4pcu5ExqpDydiWQsHvqjihHWLVFs5rpw/SIsO/InGwrlXi7N+1QxWGXfmRjo95H
         EgiDlGI6Gftm9Kq4cJnR7J5jIjFf/ZDzMTPGVVN2e/6+8DISrsNCTgq4vsUDFtjsBRI0
         gxvpg3KIccNSSeZ+8ordZfqb0rzbGDyNx7uVnc+mO734rvekT/0FjberEqdz6s3i4uRc
         7huTlN9kftIF3SpPGE1Iz9Z0kFAQKf5Qi9WA7w8x27t/PFeEaBJp5I9ot6RUB3f+7l++
         +XixhwVIyugmfGnZJCoIvYJU23rhS2qlSoIrWimqYF6/w3qNITNo/+lERubvijg4CddH
         hvBg==
X-Forwarded-Encrypted: i=1; AJvYcCUTkhD3tszwE61uH+jrxw8qZGDRhd3yYRw/mS/O2G9rnP5ReTuV+4Yjv32GZ428YHhjyZrhxawKs2Mh@lists.infradead.org, AJvYcCVa1ARuuaMeOtdUusz+gmfSNXZ3NaaHrdVwhjstdBMIM6eEvaK+8P6vpMkPnyoudDXT19yLg+1qLqLlPp/WHWA=@lists.infradead.org, AJvYcCVwpdS1/R/WP9qVRLgdbsjHAJRE5bdEBl0b8N+lPPh5MUVX6//O/t609hXBFY9Oze1f8K/IYgDZ7A7PaTrvYkDm@lists.infradead.org
X-Gm-Message-State: AOJu0YwtVcn5Brq+LZg7K5nOWnEXgDmxpjvT5rfRyLFhaLENCj0FToIQ
	WpAYE3oY3TnPXsyFnzMxuLDUw7Iq7q+dnW6aIPlC+rxoANwLsIXvvhYwklA4tBQOxHKIt0Q5GaJ
	2GjwCXH3+YSVT0PKgmumaOU1AlRKPj7s=
X-Gm-Gg: ASbGncsxC040MC+3AWjZF7Gbd5tvLw/F6wt5HVMztDTwetAp3vIa1lK12qGSZhEUmW1
	oho80CxrJG4YON916HS5NPqDPQpkDWe2nvmUL7CrC8PcVJ5bdUzskN/4DlCzMopsjjm5SxDWf8l
	8cW/yTsMb8t4j2UI3mQaYXkfnPSG7QkIhATTTi/W1yktMMl7dmxo7ag3czQODNDvzoOm+h86Unb
	9hPPrstBpurc2Dz9GJtZsGR3S+7k8KK9MV0mcU=
X-Google-Smtp-Source: AGHT+IGZKz1tpSwZENVH7eq2lbQKS/ckKC1RJ5Elh7kv3TzcssZgVYBUSlfRHCr803DVDFTPFP0Xzi7enXaZL6INYzQ=
X-Received: by 2002:a05:690c:6d8b:b0:718:3b9f:f1f0 with SMTP id
 00721157ae682-71bc991cebdmr84514327b3.26.1754553527739; Thu, 07 Aug 2025
 00:58:47 -0700 (PDT)
MIME-Version: 1.0
References: <20250806133824.525871-1-rick.wertenbroek@gmail.com>
 <20250806133824.525871-2-rick.wertenbroek@gmail.com> <20250807-amphibian-fanatic-muskrat-b1365b@kuoka>
 <7ea03b71-d36d-49a4-b848-34eba4c1620d@kernel.org>
In-Reply-To: <7ea03b71-d36d-49a4-b848-34eba4c1620d@kernel.org>
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Date: Thu, 7 Aug 2025 09:58:11 +0200
X-Gm-Features: Ac12FXykZEwvQuAbP1opdqmWRhEGs-r5-vMCR-fxkqHt9AuoJgwdnEGvT3Iy_Qg
Message-ID: <CAAEEuhpZGbuGkAKRiYQouAwDwnJbP+9ppi7BtrZekKpp20iOgQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: rockchip,pcie3-phy: add optional
 differential phy clocks
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: rick.wertenbroek@heig-vd.ch, dlemoal@kernel.org, 
	alberto.dassatti@heig-vd.ch, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_005848_895534_808925DF 
X-CRM114-Status: GOOD (  16.14  )
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

T24gVGh1LCBBdWcgNywgMjAyNSBhdCA5OjQ04oCvQU0gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6
a0BrZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIDA3LzA4LzIwMjUgMDk6NDIsIEtyenlzenRvZiBL
b3psb3dza2kgd3JvdGU6Cj4gPiBPbiBXZWQsIEF1ZyAwNiwgMjAyNSBhdCAwMzozODoyMVBNICsw
MjAwLCBSaWNrIFdlcnRlbmJyb2VrIHdyb3RlOgo+ID4+IEJvdGggUEhZcyBjYW4gdXNlIGFuIGFs
dGVybmF0ZSByZWZlcmVuY2UgZGlmZmVyZW50aWFsIGNsb2NrLCBhZGQgdGhlIGNsb2Nrcwo+ID4K
PiA+IEkgZG8gbm90IHNlZSBhbnkgY2hhbmdlcyBpbiByb2NrY2hpcCxyazM1ODgtcGNpZTMtcGh5
LCBzbyB5b3VyICJib3RoIiBpcwo+Cj4gSSBtZWFudCAzNTY4LCB0aGUgb3RoZXIgb25lLgo+CgpC
eSAiYm90aCIgSSBtZWFudCBib3RoIFBIWXMgb2YgdGhlIFJLMzU4OCBhcyB0aGUgcmszNTg4LXBj
aWUtcGh5IGlzCmFjdHVhbGx5IGEgZHVhbCBQSFkgKFBIWTAgYW5kIFBIWTEgd2hpY2ggYm90aCBj
YW4gdXNlIGluZGVwZW5kZW50CmNsb2NrcykuCgpUaGUgUkszNTg4IFBIWSBpcyBhIGR1YWwgUEhZ
IHdpdGggdHdvIGluZGVwZW5kZW50IFBDSWUgMy4wIHgyCmludGVyZmFjZXMgKHRoYXQgY2FuIGJl
IGNvbWJpbmVkIGludG8gYW4geDQgb3IgdXNlZCBpbmRlcGVuZGVudGx5KS4KVGhlIFJLMzU2OCBQ
SFkgaXMgYSBzaW5nbGUgUEhZIHdpdGggb25lIFBDSWUgMy4wIHgyIGludGVyZmFjZS4KClRoZSBS
SzM1NjggYWxyZWFkeSBoYXMgdGhlIGJpbmRpbmdzIGZvciB0aGUgZXh0cmEgZGlmZmVyZW50aWFs
IGNsb2NrCmZvciBpdHMgUEhZLCBidXQgdGhlIFJLMzU4OCBkaWQgbm90LCBzbyBJIGFkZGVkIHRo
ZW0uCgpJIHNob3VsZCBtYXliZSByZXBocmFzZSB0aGlzIHRvIG1ha2UgaXQgY2xlYXJlciBpdCBh
cHBsaWVzIG9ubHkgdG8gdGhlClJLMzU4OCBhbmQgdGhhdCBieSBib3RoIFBIWXMgSSBtZWFuIFJL
MzU4OCBQSFkwIGFuZCBQSFkxCgo+ID4gZWl0aGVyIGluY29ycmVjdCBvciBhbWJpZ3VvdXMuCj4g
Pgo+ID4gLi4uCj4gPgo+ID4+IHRvIHRoZSBEVCBiaW5kaW5ncwo+ID4+Cj4KPiBCZXN0IHJlZ2Fy
ZHMsCj4gS3J6eXN6dG9mCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
