Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2CD0D41C02
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Nov 2024 05:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kdSb7GZBJx6q+akUM0BDbDJQX3G5ABmJGNMu+w14OW4=; b=xi6u9/wra7v59W
	cshXkRSJcLD8EVINR0MLair5ikgHIqxiJQFhe9w4gwTt9+VlFuNqUHN4WLpM2Tg2bDPLgLl8elAtS
	A4j3+ClqDBCdQPmSB76q7sjIdUnJc7QifDQ8IxqQoWBUeRhUyncCt5kscoLnj4NEcFYtYH2Y/0uem
	Np5uVZUDlyV6NjTGTqZI2ulU/EPJQBRhJB8F/Q7w7Uq1hr7wbYuIu7ob46LzW+nCQTz7DBuZgP/pT
	QzALzs6dR0+4WzsBi8mV5UadNa2speBmXKesMVphgcffam6r/2OtqYJtQAJ4nuHfpi6cCUKblYQd8
	NJFveY4GRJxwVI1h3PDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tB5j0-00000005n6s-3kGp;
	Wed, 13 Nov 2024 05:15:30 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tB5ix-00000005n5z-28ha;
	Wed, 13 Nov 2024 05:15:29 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-37d462c91a9so4085356f8f.2;
        Tue, 12 Nov 2024 21:15:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731474925; x=1732079725; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HPN2+ClNY4OUgw2QDwMQ8s5sPEe8deCfdS3jRkvBbD4=;
        b=HLBcRMfhHdOnAvQWSp1baDuA4mO5ycagZA+1C0c8VfrB9rYWDm5Ez/EWUzA/7JC7Nb
         5k0oFgKG4nM9YrDXRpR7Gh5WBqKNkaSRI9q06z09MKsQYKycGEv5VxJCXe59O3pxJ+QE
         4NPYyuue+WxV6N08pdkKTrtlq5VntqEjEK8gibkObk4qeRoU1agTmQ5fZI3LENUJhue2
         o4hy54SyRXVbwxG3qBRx6UP76m7dUUc97Sqh2zim6VaLkpjHxhR9K9IOyei07Z7Y9i9U
         IPnzoCOhjrj/c71EwKm5RGHKiKZf6EoYf+pwrSG02yIx6cvWUU/OZVEF1b2fxvJzcyGu
         3xFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731474925; x=1732079725;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HPN2+ClNY4OUgw2QDwMQ8s5sPEe8deCfdS3jRkvBbD4=;
        b=dMkEKRh/I9LXbDeuTovYCd2cYDtX0+Cjnwjkq/Arp2T70yooW92x4FpW9jpxQZPlpV
         PfxVzbj6jmv0McsysHfPkzJ1yh6Pt97VrXmCSuBuXGKNDbHcXtc5kTMb2AeP9qxe9QFS
         cMxY7jCnvmC10++VreThV5Ih6P2FhI8MWRIu1+8/QuSncjGXepeyJXtDEDIU83jbkAOq
         K+h9oamnH/x784G17yFkcXBb6SvSUBNXWKVGhH/zCGhPtMxgSNF6GIhfzzWapNScaB/a
         IiMQnaF//WGvHNEsPNGaT0Wr5MnTyjvm6H6OIRMFmFOPixOwANczuT+Liy7KLi3IFxQq
         SQoQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHY/E5eZMzVlGeWnltofQ2+ACuZZdDpyphzHz9tHnZArRACOdBMkme4EYp22uhCmkbOpsgXUp72FVMKr6uecJv@lists.infradead.org, AJvYcCWd/qUUVeVadoJ97rBTLpGh9a0TejNyVmj1JXoSb4yMmUBH61ttSEDcbvpXTMrjyhFS7CACYgZC/RbNC23cPug=@lists.infradead.org
X-Gm-Message-State: AOJu0YwMB2mwydaR/tNRd+DleLYBg0gq6K/+2+aaU1uU7BfNRCswoC01
	YCzBxObJNqq1Kqu2K4uTo/JiSKEeY38Gxn7wPOP/IXLVSE2bBTfzlFCUI4osUXACuQEzzTfNZpU
	OOB5uruMv0PO3xTHItpcuRCRAXIT2gFBy
X-Google-Smtp-Source: AGHT+IE/zP4IJkvYGPVEb9b5NDmorppeghk3nUxzyj+9tdFlYYh5tXWjzAQV8KoaAiUa27cl7EKOb4TrrKEDwmr4/q4=
X-Received: by 2002:a05:6000:1ac6:b0:377:6073:48df with SMTP id
 ffacd0b85a97d-3820834b240mr3709033f8f.58.1731474924898; Tue, 12 Nov 2024
 21:15:24 -0800 (PST)
MIME-Version: 1.0
References: <20241111045408.1922-1-honyuenkwun@gmail.com> <20241111045408.1922-5-honyuenkwun@gmail.com>
 <173135828350.1935626.3279818343954125790.robh@kernel.org>
In-Reply-To: <173135828350.1935626.3279818343954125790.robh@kernel.org>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Tue, 12 Nov 2024 23:15:14 -0600
Message-ID: <CALWfF7+KdqZT-FRzjAoXD5b1CXLWu-tk4FnSqeRRfuoBWvLzbA@mail.gmail.com>
Subject: Re: [PATCH 2/3 v3] dt-bindings: arm: rockchip: Add Xunlong Orange Pi
 5 Max
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Ondrej Jirman <megi@xff.cz>, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_211527_571045_9ED94B95 
X-CRM114-Status: GOOD (  19.60  )
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

T24gTW9uLCBOb3YgMTEsIDIwMjQgYXQgMjo1N+KAr1BNIFJvYiBIZXJyaW5nIChBcm0pIDxyb2Jo
QGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4KPiBPbiBTdW4sIDEwIE5vdiAyMDI0IDIyOjUzOjI1IC0w
NjAwLCBKaW1teSBIb24gd3JvdGU6Cj4gPiBBZGQgZGV2aWNldHJlZSBiaW5kaW5nIGZvciB0aGUg
WHVubG9uZyBPcmFuZ2UgUGkgNSBNYXggYm9hcmQuCj4gPgo+ID4gVGhlIE9yYW5nZSBQaSA1IE1h
eCBpcyBhIHNpbmdsZSBib2FyZCBjb21wdXRlciBwb3dlcmVkIGJ5IHRoZSBSb2NrY2hpcAo+ID4g
UkszNTg4IHNpbWlsYXIgdG8gdGhlIE9yYW5nZSBQaSA1IFBsdXMuCj4gPgo+ID4gU2lnbmVkLW9m
Zi1ieTogSmltbXkgSG9uIDxob255dWVua3d1bkBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+ICBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwgfCA2ICsrKyst
LQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4g
Pgo+Cj4KPiBQbGVhc2UgYWRkIEFja2VkLWJ5L1Jldmlld2VkLWJ5IHRhZ3Mgd2hlbiBwb3N0aW5n
IG5ldyB2ZXJzaW9ucy4gSG93ZXZlciwKPiB0aGVyZSdzIG5vIG5lZWQgdG8gcmVwb3N0IHBhdGNo
ZXMgKm9ubHkqIHRvIGFkZCB0aGUgdGFncy4gVGhlIHVwc3RyZWFtCj4gbWFpbnRhaW5lciB3aWxs
IGRvIHRoYXQgZm9yIGFja3MgcmVjZWl2ZWQgb24gdGhlIHZlcnNpb24gdGhleSBhcHBseS4KPgo+
IElmIGEgdGFnIHdhcyBub3QgYWRkZWQgb24gcHVycG9zZSwgcGxlYXNlIHN0YXRlIHdoeSBhbmQg
d2hhdCBjaGFuZ2VkLgpUaGlzIHYzIHZlcnNpb24gaXMgbm93IHNoYXJpbmcgYSBiYXNlIGR0c2kg
d2l0aCB0aGUgT3JhbmdlIFBpIDUgUGx1cy4KU28gaXQncyBub3QgYSBzZXBhcmF0ZSBlbnRyeSBp
biB0aGUgZHQtYmluZGluZ3MgbGlrZSBpdCB3YXMgaW4gdjIuCgpJJ20gZWFnZXIgdG8gaGVhciBm
cm9tIHRoZSBPcmFuZ2UgUGkgNSBQbHVzIG1haW50YWluZXIgaWYgdGhpcwphcHByb2FjaCBpcyBn
b29kLCBvciBpZiB0aGUgYm9hcmRzIGFyZSBjb25zaWRlcmVkIHR3byBkaXZlcmdlbnQgYW5kCnRy
eWluZyB0byBzaGFyZSBhIGR0c2kgaXMgZ29pbmcgdG8gY2F1c2UgbW9yZSBoZWFkYWNoZXMgd2hl
biBlbmFibGluZwpmZWF0dXJlcyB0aGF0IGFyZSB1bmlxdWUgdG8gdGhlIE9yYW5nZSBQaSA1IFBs
dXMuCgpJbiB0aGlzIGNhc2UsIGl0J3Mgbm90IGFzIHNpbWlsYXIgYXMgdGhlIE5hbm9QaSBSNkMg
dnMgUjZTIG9yIHRoZQpPcmFuZ2UgUGkgNSB2cyBQaSA1Qi4KClNvIGlmIHdlIGRlY2lkZSB0byB1
c2UgdGhlIGNvbW1vbiBhcHByb2FjaCwgSSBjYW4gdXNlIENvbm9yJ3MgQWNrLiBCdXQKaWYgd2Ug
ZGVjaWRlIHRvIHVzZSB0aGUgc2VwYXJhdGUgYXBwcm9hY2gsIEkgY2FuIHVzZSB5b3VyIEFjayBm
cm9tIHYyLgoKPgo+IE1pc3NpbmcgdGFnczoKPgo+IEFja2VkLWJ5OiBLcnp5c3p0b2YgS296bG93
c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+Cj4KPgo+CgpKaW1teQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
