Return-Path: <SRS0=uCGj=F2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F8A6C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Dec 2020 16:32:51 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8DFC922AAE
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Dec 2020 16:32:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8DFC922AAE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=simonsouth.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:Date:References:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wagSzmcxEhzgYW2FlPmgRYy67Rvk13gUL7I9/c/iHgA=; b=GvK38b1YKOmv+d3rs03rXcWdl
	bMNMq+yUfBl09hx0D0lck9ZBVQ1FudvmSr7QC64f47CP1v1nbRaZiVVXxnSjy66IyFcu31nEyubIl
	LTTi5RPCXLEOgVzViLSdTQW45tInm8GRo/40dGuxt61kYVEYY8ZgvUJf4lJ8gwZkx3n1sVW+5JR4r
	H0FDcUcjEVYjlSs2t99up3UK/hcnWYXD6VskqKAzTSPx+Goh/YP8CwtmTL/Re9vdDO+DvjFiEg1CF
	pNZktPIfOmDxaNsjcoEVhu35/3X3mJdT7A7C2N5FzlNbZ+JhJJFdJlIlp7eonsfc/JSPUE16wokdJ
	E1t3Ybnew==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1krkad-0002vf-91; Tue, 22 Dec 2020 16:32:47 +0000
Received: from mailout.easymail.ca ([64.68.200.34])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1krkaZ-0002uu-S7; Tue, 22 Dec 2020 16:32:44 +0000
Received: from localhost (localhost [127.0.0.1])
 by mailout.easymail.ca (Postfix) with ESMTP id AC5112415A;
 Tue, 22 Dec 2020 16:32:42 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at emo06-pco.easydns.vpn
Received: from mailout.easymail.ca ([127.0.0.1])
 by localhost (emo06-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 01he_5yAQHXN; Tue, 22 Dec 2020 16:32:42 +0000 (UTC)
Received: from jupiter (unknown [108.162.141.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailout.easymail.ca (Postfix) with ESMTPSA id 8EF1F24157;
 Tue, 22 Dec 2020 16:32:29 +0000 (UTC)
From: Simon South <simon@simonsouth.net>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v2 3/3] pwm: rockchip: Do not start PWMs not already
 running
References: <cover.1608407584.git.simon@simonsouth.net>
 <0acdf3a78f670a2678e03b0bbbb01aa58a11ce9a.1608407584.git.simon@simonsouth.net>
 <20201221090553.bopd2aaoheapww3r@pengutronix.de>
Date: Tue, 22 Dec 2020 11:32:29 -0500
In-Reply-To: <20201221090553.bopd2aaoheapww3r@pengutronix.de> ("Uwe
 =?utf-8?Q?Kleine-K=C3=B6nig=22's?= message of "Mon, 21 Dec 2020 10:05:53
 +0100")
Message-ID: <871rfhreci.fsf@simonsouth.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201222_113243_974174_873B8BE4 
X-CRM114-Status: GOOD (  14.74  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-pwm@vger.kernel.org, heiko@sntech.de, bbrezillon@kernel.org,
 linux-rockchip@lists.infradead.org, thierry.reding@gmail.com,
 tpiepho@gmail.com, lee.jones@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JpdGVz
Ogo+ICJzdGFydGluZyBQV00iIGhlcmUgbWVhbnMgZW5hYmxpbmcgdGhlaXIgY2xvY2tzLCByaWdo
dD8gSSB3b3VsZG4ndAo+IGV4cGVjdCB0aGF0IHRoaXMgaGFzIGFueSBlZmZlY3Qgb24gdGhlIG91
dHB1dCwgYW0gSSByaWdodD8KClJpZ2h0LCBpdCBkb2VzIG5vdDsgYW5vdGhlciBtaXN1bmRlcnN0
YW5kaW5nIG9uIG15IHBhcnQuIEknbGwgZml4IHRoZQpjb21taXQgbWVzc2FnZS4KCj4gSnVzdCBm
b3IgbXkgdW5kZXJzdGFuZGluZzogVGhhdCB5b3UgbW92ZWQgY2xrX3ByZXBhcmVfZW5hYmxlKHBj
LT5wY2xrKQo+IGZ1cnRoZXIgZG93biBpcyBub3Qgc3RyaWN0bHkgbmVjZXNzYXJ5IGZvciB5b3Vy
IGNoYW5nZSwgcmlnaHQ/CgpUaGF0J3MgcmlnaHQuIE15IHRob3VnaHQgd2FzIHRvIGtlZXAgdGhl
IGNvZGUgdGhhdCBlbmFibGVzIHRoaXMgY2xvY2sKY2xvc2UgdG8gdGhlIGNvZGUgdGhhdCByZWxp
ZXMgb24gaXQsIGFuZCB0byBtaW5pbWl6ZSB0aGUgZHVyYXRpb24gdGhlCmNsb2NrIGlzIGVuYWJs
ZWQuCgpXb3VsZCBpdCBiZSBiZXR0ZXIgdG8gbGVhdmUgdGhlIGNvZGUgd2hlcmUgaXQgaXM/Cgo+
IEknbSBub3QgYSBiaWcgZmFuIG9mIHRoaXMgPzogY29uc3RydWN0Li4uCgpOZWl0aGVyIHdhcyBJ
LCBhY3R1YWxseSwgYnV0IEkgZ3Vlc3NlZCB0aGUgc2hvcnRlciB2ZXJzaW9uIHdvdWxkIGJlCnBy
ZWZlcnJlZC4gSSdtIGhhcHB5IHRvIGNoYW5nZSBpdCBiYWNrIHRvIG1hdGNoIHdoYXQgeW91IGRl
c2NyaWJlZC4KCi0tIApTaW1vbiBTb3V0aApzaW1vbkBzaW1vbnNvdXRoLm5ldAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
