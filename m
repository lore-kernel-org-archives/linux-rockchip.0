Return-Path: <SRS0=VuRY=NW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3815C432BE
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 00:42:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7E81460F5B
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 00:42:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7E81460F5B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=vanguardiasur.com.ar
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R63VXw0ZmswrsAuBVe3UFkWOKVuTdFCMJelADjJGh9g=; b=RNt/s3FBUegLqP
	kwu3hqEBDUIXat1Sc+SyXw6/TRqJtMpMwBf8ecadMQlgKbzg9CHUxAByu6TzqPW+5CWwHHCJyEA1Q
	2k82sN0SAjDNK8AxRNN8anS9abwHkOwnCCV2gc06vkNoysIqPNbj4TRfezaC7CepoVO6o4QMUY7ca
	dyl0BAoSDI9gneZY/ihYp1oXRhrB5mQQ3HK9HpJeDHabgtb592+RTnPpN/AxdwvLn1mFvy6xhoKIR
	JMsoOmE2XDCUXgctPOg4cZy5cmAMnZqV3Te4EoN/omdtyzhnHwWqZm7p5NKVRGV4eGm3NESFGQs8c
	26Sj6Bjk9BCIm+Hc0T9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKrqm-000u4g-5S; Tue, 31 Aug 2021 00:42:04 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKrqY-000u2x-SW
 for linux-rockchip@lists.infradead.org; Tue, 31 Aug 2021 00:41:53 +0000
Received: by mail-ej1-x635.google.com with SMTP id t19so34884185ejr.8
 for <linux-rockchip@lists.infradead.org>; Mon, 30 Aug 2021 17:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=t6EgJ/pBlXGjmQW+1kycNPH7wqBqGocIxe5B3vOVKdg=;
 b=ozqNjl0qJHwzCO4kLeRZtdKmVX6r37wi9a6tbMXD6kiNe89XfkdS2y1o/bSVxH2TB/
 kZZBD0cHymA0yyOmQyVDhSJ+oP/i6Faea7bdcgRwqRdX/5kGuH6qkyqN3AobnaWQxJcq
 Q/H5HFeNijuHcbSL5AYcJsE5vedAxWkGqU+/RPjCyM47uVUeg3N1i1Z3ZEOSCiXC4vTm
 56dUDooSPjrnIiRUPmKYf2ZWXS1gRvo/YbD0LTCA+nMrqprAvDc26WMudYtoz9BWzpIG
 z4H+/CullndzRIrgzLgm6xlJ78L8eiOHxSCSUXwCdBPHo0dWFuPVlP0Q7Br6L5OYcxn1
 VDzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=t6EgJ/pBlXGjmQW+1kycNPH7wqBqGocIxe5B3vOVKdg=;
 b=WBQshJJkfXSdt+Lgiu7QTxiriY1Hy0VGDMcBtx1o3J8ObzCkV4/TtzVEGPlTGZpBjw
 KabzgnBwNE7cdPdLpwix0Frh3ow4+pXwcu7ecpTA/F7aB2MMh0AMa/Lk8xgxTHAxoKVG
 LJYuTQiUpGwMaLs8d69YJQHZjcHWAXXJHLroo/RBfgCK2SYbHjDZ0t4cPV+4XITtF4U5
 sZ4eqsRYiUG5dCbcpJv1I95BqQfE6TgICNQTTo5sJulAyje8UM+bxp7/f400Y8LEkfJZ
 YnocXek3lrvuxE/LGtMX62xhDGvdMEhiQomxHqPEq8N/FPdCzQiR1F/kCUJal2vvFvyT
 p+1Q==
X-Gm-Message-State: AOAM531dujmLF9F+zpWUzl3mwNL8pZLBOTskopi7X637eX/AeORjrrVC
 +8VViSNqAo+H8J4+i98nZRRx7LNv51GWhmHp26vh7Q==
X-Google-Smtp-Source: ABdhPJwfDEapt8mz+NTo0uJkU3v5YR5ufjt/WlrI5Z+Q8KSQPjbjAOUEvNuF9+JEMzyiUG+AY7eqBrSXjXnTKMn6BMw=
X-Received: by 2002:a17:906:7749:: with SMTP id
 o9mr28291109ejn.141.1630370508559; 
 Mon, 30 Aug 2021 17:41:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210830180758.251390-1-mike.rudenko@gmail.com>
 <20210830180758.251390-2-mike.rudenko@gmail.com> <6474995.6kXVAnRFRJ@diego>
In-Reply-To: <6474995.6kXVAnRFRJ@diego>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Mon, 30 Aug 2021 21:41:36 -0300
Message-ID: <CAAEAJfB6FBbeEPuzirP2nuU_J9nLFSrczgXYVfNQUZbEJrbc7Q@mail.gmail.com>
Subject: Re: [PATCH v1 1/5] phy: phy-rockchip-dphy-rx0: refactor for tx1rx1
 addition
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org, Mikhail Rudenko <mike.rudenko@gmail.com>, 
 linux-media <linux-media@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_174151_126320_075D320D 
X-CRM114-Status: GOOD (  11.50  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgSGVpa28sCgpPbiBNb24sIDMwIEF1ZyAyMDIxIGF0IDE3OjQ2LCBIZWlrbyBTdMO8Ym5lciA8
aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPgo+IEhpIE1pa2hhaWwsCj4KPiBBbSBNb250YWcsIDMw
LiBBdWd1c3QgMjAyMSwgMjA6MDc6NTAgQ0VTVCBzY2hyaWViIE1pa2hhaWwgUnVkZW5rbzoKPiA+
IEluIG9yZGVyIHRvIGFjY29tbW9kYXRlIGZvciByazMzOTkgdHgxcngxIGFkZGl0aW9uLCBtYWtl
Cj4gPiBlbmFibGUvZGlzYWJsZSBmdW5jdGlvbiBjYWxscyBpbmRpcmVjdCB2aWEgZnVuY3Rpb24g
cG9pbnRlcnMgaW4KPiA+IHJrX2RwaHlfZHJ2X2RhdGEuIEFsc28gcmVuYW1lIHJrX2RwaHlfd3Jp
dGUgYW5kIHJrX2RwaHlfZW5hYmxlIHRvCj4gPiBhdm9pZCBuYW1pbmcgY2xhc2hlcy4KPgo+IFlv
dSdyZSBhIGJpdCB0b28gbGF0ZSB0byB0aGUgcGFydHkgOi0oIC4KPgo+IFRoZSB0eDFyeDEgZHBo
eSBpcyBsaXZpbmcgX2luc2lkZV8gdGhlIDJuZCBEU0kgY29udHJvbGxlciBhbmQgaXMKPiBjb25m
aWd1cmVkIHRocm91Z2ggaXQuCj4KCldvdWxkIHlvdSBiZSBzbyBraW5kIHRvIHB1c2ggYSBwYXRj
aCBhZGRpbmcgc29tZSBjb21tZW50cyB0bwpkcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
aXAtZHBoeS1yeDAuYyB3aXRoIHRoaXMgaW5mb3JtYXRpb24/CgpUaGFua3MsCkV6ZXF1aWVsCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
