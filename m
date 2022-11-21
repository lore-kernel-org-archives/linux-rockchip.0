Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7E35C43217
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 17:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0PtM8PQCxycpY8VdUb9woitk35w1YZmgziLhjuKN7w=; b=g2vmWSUaCtkPcD
	df/d2sYoazMKeuyhrHXtymx6tuTqf7ojITrsyJ1Jjloo/I51KjO+CabIFvOSdrck+zEeiUoMXRmQS
	WSq+7CQLo7dWkzTMaBUESYqa0zxWPstU7zsY1ThAbr9wjQhAxP7BJQRCLup0zToxYrgVF3r6fxI6S
	bYgFtpwREFPy8cOIJwBRYmVatYZkiBdRwnYAdiVbUN3/yXlpKd8xAEYiULADi6sCd8Izbe5kMdl/5
	UPBk/1+dptoFYqCSrDE8AIeutbBIW9uvYoQZJCOHZT+uiOV4VCs4d1mD+aaBFefbWv4YZDhzRqSeA
	X9Tsy30Q2UD9v3+peysg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxAg1-00GM2W-Oz; Mon, 21 Nov 2022 17:33:49 +0000
Received: from mail-io1-xd2f.google.com ([2607:f8b0:4864:20::d2f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxAca-00GJuO-Gt
	for linux-rockchip@lists.infradead.org; Mon, 21 Nov 2022 17:30:22 +0000
Received: by mail-io1-xd2f.google.com with SMTP id z3so9126895iof.3
        for <linux-rockchip@lists.infradead.org>; Mon, 21 Nov 2022 09:30:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/CdFA7VtSjmYPiyz7y2hV+ROJUwbYLUnLtbKUpXnpH4=;
        b=XWajUMngI/PRAhJ4ffZ78Wf045DGo/Gx4ywdvEGYTudmSCXcvC1hLHKX/Sx7mAAi48
         4bZQvdIqmN1M98mtKYPtEJ87Wp1FGuXko9EZR2yG9Ygt8GLVZxkmSq+/uL6biisvLSi6
         xGV9TSsZWJa7c6A+dk//s057R/4qWDHsftknObWoPuhdKPOK24fGkIwB3+MxOltBGVyH
         cNBQoBa6aKgucix6jJxlC9Fpvh3lBWMaRIRHO7Y0Ac7Uh2W2l9mjy/LHK1j1SaYxO7WU
         ggp/ZltpsusMJtM3ZixxDc0AUj4G8xYBu6f0n5cX3qhmhhBSlJ7gRY2CJIvDRDM5NMWd
         hewA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/CdFA7VtSjmYPiyz7y2hV+ROJUwbYLUnLtbKUpXnpH4=;
        b=rPKSLFVxNSMPAqf+xlfIVzaeDbA7TzmWpSnxjd5cnaQAcGnu/uh12EFv6UNQWpkiwr
         TG0YbfHbHlvlqdvt7kfkxxzsZ1x0fNHxnnSwOsQIFd3fVqI3mo1aNyUomE8gfwIUB+lQ
         JpcEmpAAkQEtXHZvdnSXdJ8IMnIGR4fq+tWLwMU6T1+d/g/5bos85i8U+ucIQ8R9QszQ
         8T52Vf06wdmBKNMvfUKkL7kDrDMBBzuqIf3UMHGK9Gf+aTZuKLDbDN4xEWPTDrsiz4yK
         AiGrni5BmMTTgizfToHFxdhDECe8gITKa/XMqVj8gmpfW4U9oQJRYvb66ScYU8XejJlc
         0BUg==
X-Gm-Message-State: ANoB5pkM+4/cRT69yDsGf/DLtAOuGr1ji4ct2pb77KA6v16dHxtwViWl
	ACmmu3Lveg51fF51x1aLM7qUQ2I4bi3nf6WdI7c6aA==
X-Google-Smtp-Source: AA0mqf5Ldn3zMPR1KTK1lb+ixNQARhU8GYZX0oMCAEPybcd4Gk7DkHHRLn+vZ7hFw9GNTzyY2cS3WOqAx8NgVUSyS+E=
X-Received: by 2002:a05:6638:20a:b0:374:f7d4:5eca with SMTP id
 e10-20020a056638020a00b00374f7d45ecamr1328041jaq.164.1669051813305; Mon, 21
 Nov 2022 09:30:13 -0800 (PST)
MIME-Version: 1.0
References: <20221121151755.2072816-3-m.tretter@pengutronix.de>
 <TY3P286MB2611FB223B1CC437B01BD984980A9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
 <20221121164116.GE15565@pengutronix.de> <TY3P286MB261119C709225F2DED97CF81980A9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
In-Reply-To: <TY3P286MB261119C709225F2DED97CF81980A9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Mon, 21 Nov 2022 14:30:02 -0300
Message-ID: <CAAEAJfC74Am19+GSpCpbWJVpdbgv4n=3pjMHNkpRcCQfwi5xQA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add RGA2 support to rk356x
To: Shengyu Qu <wiagn233@outlook.com>
Cc: Michael Tretter <m.tretter@pengutronix.de>, devicetree@vger.kernel.org, heiko@sntech.de, 
	jacob-chen@iotwrt.com, kernel@pengutronix.de, 
	krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net, 
	robh+dt@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_093016_801410_A24AB11B 
X-CRM114-Status: GOOD (  16.68  )
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

SGkgU2hlbmd5dSwgTWljaGFlbCwKCk9uIE1vbiwgTm92IDIxLCAyMDIyIGF0IDI6MTMgUE0gU2hl
bmd5dSBRdSA8d2lhZ24yMzNAb3V0bG9vay5jb20+IHdyb3RlOgo+Cj4gSGksCj4gSSByZW1lbWJl
ciBzb21lb25lIHNhaWQgdGhhdCByZ2EyIGhhcyBvbmx5IDMyYml0IGFkZHJlc3Mgc3BhY2UgYnV0
IG5vdCBoYXZpbmcgYSBtbXUgb3IgbW11IG5lZWRzIHRvIGJlIGNvbmZpZ3VyZWQuIEJldHRlciBh
c2sgYnkgeW91cnNlbGYgaW4gcGluZTY0IGRpc2NvcmQgc2luY2UgSSdtIG5vdCBzdXJlIGFib3V0
IHRoYXQuCj4KPiBTaGVuZ3l1Cj4KPgo+IOS6jiAyMDIy5bm0MTHmnIgyMuaXpSBHTVQrMDg6MDAg
5LiK5Y2IMTI6NDE6MTYsIE1pY2hhZWwgVHJldHRlciA8bS50cmV0dGVyQHBlbmd1dHJvbml4LmRl
PiDlhpnliLA6Cj4gPkhpLAo+ID4KPiA+T24gVHVlLCAyMiBOb3YgMjAyMiAwMDowMToyOCArMDgw
MCwgU2hlbmd5dSBRdSB3cm90ZToKPiA+PiBTb21lb25lIGZyb20gcGluZTY0IGRpc2NvcmQgZm91
bmQgdGhhdCBSR0EyIGRvZXNuJ3Qgd29yayBwcm9wZXJseSBvbiBvdmVyCj4gPj4KPiA+PiA0R0Ig
bWVtb3J5IFJLMzU2OCBkZXZpY2VzLiBBcmUgeW91IHN1cmUgY3VycmVudCBkcml2ZXIgd29ya3Mg
bm93Pwo+ID4KPiA+SSBhbSBhYnNvbHV0ZWx5IHN1cmUgdGhhdCB0aGUgZHJpdmVyIHdvcmtzIG9u
IGEgMkdCIFJPQ0szQSBib2FyZC4KPiA+VW5mb3J0dW5hdGVseSwgSSBkb24ndCBoYXZlIGEgZGV2
aWNlIHdpdGggNEdCIG9yIG1vcmUgbWVtb3J5IGFuZCBJIGNhbm5vdCB0ZXN0Cj4gPnRoZSBkcml2
ZXIgd2l0aCBzdWNoIGEgZGV2aWNlLgo+ID4KPiA+QXMgdGhlIGRvY3VtZW50YXRpb24gZm9yIHRo
ZSBSR0EyIGlzIHRoZSBzYW1lIGluIHRoZSBUUk0gb2YgdGhlIHJrMzI4OCBhbmQKPiA+cmszNTY4
LCBJIHdvdWxkIGd1ZXNzIHRoYXQgdGhlIGRyaXZlciBkb2Vzbid0IHdvcmsgb24gYSByazMyODgg
d2l0aCBtb3JlIHRoYW4KPiA+NEdCIChpZiB0aGVyZSBpcyBzdWNoIGEgdGhpbmcpIGVpdGhlciBh
bmQgdGhlIGRyaXZlciBuZWVkcyB0byBiZSBmaXhlZCBmb3IKPiA+Ym90aCBTb0NzLgo+ID4KCklu
IGFueSBjYXNlLCBpZiB0aGVyZSdzIHNvbWUga2luZCBvZiBpc3N1ZSBpdCBtdXN0IGJlIGluIHRo
ZSBkcml2ZXIsCmFuZCBub3QgaW4gdGhlIGRldmljZSB0cmVlIGJpbmRpbmcgKGkuZS4gdGhpcyBw
YXRjaHNldCkuCgpSZWdhcmRzLApFemVxdWllbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
