Return-Path: <SRS0=ealT=HM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 490ABC433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Feb 2021 10:35:12 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BBCC464E31
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Feb 2021 10:35:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BBCC464E31
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F4nFo3qX/YlwAQwGKh4bcto9ZqZKtwR5hRp1FQ3FcBI=; b=GLEwIcSRJ/5gjdF6RUDywmS1M
	ENgFqZCx27FbmPks3zgx1qHmPWFexE1+TsP1YT+24ih3oAz/v0tuhwQwelS2TzPD2YdeGP/rkBZew
	iR+w5KTjdhIF3t5Vh7pRSv+tiv7lhrsNZFr3Kgc6fQpHarOVuI4QugT/Df1omTMb1w6aVKhydhTz+
	kEJ71jztcphpRT7MOFLcwUwV+ugWA19AZqX2AcJEJH/CNaHrjZEXel8C3xNhlS0t6RehEiDXU7lUo
	lBErRc/f2wsPkm2dl3TBJTCpyk/Y9uln1Qu7YtygoONwH35ZJ6wxJsZhr2qH6WkcSc9YX4/TxyvhX
	cz0y5hjvA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9mpt-0005vR-BH; Wed, 10 Feb 2021 10:35:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9mpo-0005uS-A8; Wed, 10 Feb 2021 10:35:02 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1639364E32;
 Wed, 10 Feb 2021 10:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612953299;
 bh=1K3KbJuoIq4iabQNHnrRpJS5tQ/x2No+KUluIejW7Pc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ApRSEIX4DkcNosi6JBGhym3f3lE2MS1mNHWiTHA43HBP6CLiaWmEjOlifUANJD5rp
 FS/4DRsT5eGNrRcGCZwMZnrkDHLnV1VDTUymPsIDMlQbrchGt9XDUndQxw5ijJ/9c7
 csiS+CJ3kpBOikFl2+YIcbeEQqavukH9b4GJEWdij+70tvMW3FIvgshdDO3gYqRiyY
 vAKeHMpOnhiJ/XBkpd2ms0K99MhrJwokEtaOneVfP0fvZItQP2TXkFduEvYvZiJnVL
 1F7xExOHZWIb8w7TllVj2sjCOunc/H5X3Rd/OEgy4EZUTglLK12VtSVI7uMvc9RKGp
 sNSco52+2x9Zw==
Received: by mail-oi1-f179.google.com with SMTP id m7so1444151oiw.12;
 Wed, 10 Feb 2021 02:34:59 -0800 (PST)
X-Gm-Message-State: AOAM532yXdilezkf00AoqEwe9SBy/6Gcd/M5evY8QuVOLMC6uFyxtxGR
 lOBify/4qUsKaMIhtHQuUQebNA30e42yGpAOaDk=
X-Google-Smtp-Source: ABdhPJzseKKHEbJC7CnEtbLwFdupZ9GAl1vdMa3N8sPeQgYT+Wi1W+aI+MmSwwkSXkLQsdFrH0EVj4yLjP/H+T3mtu0=
X-Received: by 2002:aca:e103:: with SMTP id y3mr1528656oig.11.1612953298253;
 Wed, 10 Feb 2021 02:34:58 -0800 (PST)
MIME-Version: 1.0
References: <20210118155242.7172-1-jbx6244@gmail.com>
 <20210118155242.7172-2-jbx6244@gmail.com>
 <CAK8P3a3_uO23Y0tyfdh26tmCVcyp6XM+ur0WUd4khGUoBb32Hw@mail.gmail.com>
 <6598201.ejJDZkT8p0@diego>
In-Reply-To: <6598201.ejJDZkT8p0@diego>
From: Arnd Bergmann <arnd@kernel.org>
Date: Wed, 10 Feb 2021 11:34:41 +0100
X-Gmail-Original-Message-ID: <CAK8P3a25iYksubCnQb1-e5yj=crEsK37RB9Hn4ZGZMwcVVrG7g@mail.gmail.com>
Message-ID: <CAK8P3a25iYksubCnQb1-e5yj=crEsK37RB9Hn4ZGZMwcVVrG7g@mail.gmail.com>
Subject: Re: [PATCH 2/5] ARM: dts: rockchip: assign a fixed index to mmc
 devices on rv1108 boards
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210210_053500_436540_8963B790 
X-CRM114-Status: GOOD (  16.90  )
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
Cc: DTML <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBGZWIgMTAsIDIwMjEgYXQgMTI6NTAgQU0gSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4gd3JvdGU6Cj4gQW0gRGllbnN0YWcsIDkuIEZlYnJ1YXIgMjAyMSwgMjM6MjU6NDAg
Q0VUIHNjaHJpZWIgQXJuZCBCZXJnbWFubjoKPgo+IEhtbSwgcmlnaHQgbm93IEkgZG9uJ3Qgc2Vl
IHRoZSBkaXNhZHZhbnRhZ2Ugb2YgbWlzc2luZyBtbWMgbnVtYmVycy4KCkl0J3MgaW5jb25zaXN0
ZW50IHdpdGggdGhlIG5vcm1hbCB1c2Ugb2YgdGhlc2UgYWxpYXNlcyBhY3Jvc3Mgb3RoZXIKcGxh
dGZvcm1zLgoKPiBBcyBzaW1pbGFybHkgd2UgY291bnQgaTJjIGFuZCBzZXJpYWwgbnVtYmVycyBm
b3IgYSBsb25nIHRpbWUsIGV2ZW4gdGhvdWdoCj4gbm90IGFsbCBvZiB0aGVtIGFwcGVhciBvbiBl
dmVyeSBib2FyZC4KClllcywgdGhhdCBpcyBhIHNpbWlsYXIgbWlzdGFrZS4KCj4gRXNwZWNpYWxs
eSBhcyB0aGUgbWFpbiBnb2FsIGlzIHRvIHNpbXBseSBoYXZlIHN0YWJsZSBudW1iZXJzIGFuZAo+
IG5vdCBoYXZpbmcgdGhlIG1tYyBkZXZpY2VzIHN3YXAgbnVtYmVycyBvbiBldmVyeSBib290Lgo+
Cj4gU28gcmlnaHQgbm93IHdlJ3JlIG5vdCB1c2luZyB0aGVtIGZyb20gYSB1c2Vyc3BhY2UgUE9W
IGJ1dAo+IGluc3RlYWQgYWdyZWVkIG9uIGZvbGxvd2luZyB0aGUgYWRkcmVzcyBvcmRlcmluZyBv
ZiB0aGUgc29jLgo+IHNvIHdoZW4gb3JkZXJpbmcgbW1jIGNvbnRyb2xsZXJzIGJ5IHRoZWlyIGlv
LWFkZHJlc3MsIG1tYzAKPiBpcyB0aGUgZmlyc3Qgb25lLCB0aGVuIG1tYzEsIGV0Yy4KPgo+IFNv
IGp1c3QgZm9yIG15IHVuZGVyc3RhbmRpbmcsIHdoYXQgaXMgZGlmZmVyZW50IGZvciBtbWM/Cj4g
SSBndWVzcyB0byBndWFyYW50ZWUgb25nb2luZyBudW1iZXJpbmcgc2ltaWxhciB0byBzZHthLGIs
YywuLi59Cj4gT3Igc2hvdWxkIGFsbCBhbGlhc2VzIGJlIGR1cGxpY3RlZCBpbiBlYWNoIGJvYXJk
IGR0cyBhbmQgbm90Cj4gbGl2ZSBpbiBhbnkgc29jIGR0c2k/CgpFYWNoIGJvYXJkIHNob3VsZCBo
YXZlIGl0cyBvd24gYWxpYXNlcyBub2RlIHRoYXQgZGVzY3JpYmVzCmV4YWN0bHkgd2hpY2ggb2Yg
dGhlIGRldmljZXMgYXJlIHdpcmVkIHVwIG9uIHRoYXQgYm9hcmQsIGFuZAppbiB3aGljaCBvcmRl
ci4gSWYgdGhlcmUgYXJlIGNvbm5lY3RvcnMgb24gdGhlIGJvYXJkIHRoYXQKYXJlIGxhYmVsZWQg
aW4gc29tZSBmb3JtLCB0aGVuIHRoZSBhbGlhc2VzIGFyZSBtZWFudCB0bwptYXRjaCB3aGF0IGlz
IHdyaXR0ZW4gb24gdGhlIGJvYXJkIG9yIGluIGl0cyBkb2N1bWVudGF0aW9uLgoKICAgICAgQXJu
ZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
