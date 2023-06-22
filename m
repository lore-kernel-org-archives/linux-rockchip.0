Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D92E6EB64D8
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jun 2023 07:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xam+IAoLHrcv6s71rtIT0KfzrzAzFcsYnRF0mNkKS7o=; b=GO5mkM+688Yg5N
	6pqCX+oORQWiIJtk1T4vcm+Amc8ODrqgzLZOgXfTMIRM+6nI7MOfvrDVnzNlekY7LnDNhp8Q64FDM
	k+bMqYDXrS6D1jORR33PFnU/ocsjvaLn9zPht9eK1hna7CD3hi1oG9mDNjLD09g205nr96nXlmCr+
	jrVx5GD+miOv15o/B/dK3+GJimhrPwc4zqnyMFy9S+umN9uzfnY0cBwmROYsd6dFxrzjJg/6KSg3n
	FSdAJG73BT4jxostHST7C8RKYfbQXOJOFFjE3kuvNzXZZG93EfzJPxNv5YeUU1yBiWeaU22bw9skm
	tZH3jwt+HDhlbdr4RksQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCEoS-00HG0D-06;
	Thu, 22 Jun 2023 07:33:04 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCEoQ-00HFzJ-08
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Jun 2023 07:33:03 +0000
Received: by mail-qk1-x72c.google.com with SMTP id af79cd13be357-7624012c0b4so543629785a.1
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Jun 2023 00:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1687419180; x=1690011180;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dpw962v0Y3TK8MpokxN4fQuGR7xeuRReP95bZAvhUgg=;
        b=AblIFWpM11eBRDexShL0dSj9Z8l1AZpB/5ePsI1nplmIWEbonjOaMtJFSBiL9OZHf7
         wqkL39RL4dfp4Dhw5Uyr/imER1xeJi7QuP3ezQkQC4RJggjLiZwZ/iNMx22U0OtLoQdH
         iccBx9BWyCXZWrk7x1naDbFpJGD+1+hf9rvAo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687419180; x=1690011180;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dpw962v0Y3TK8MpokxN4fQuGR7xeuRReP95bZAvhUgg=;
        b=YgpMwPPIpvJ2Nntet458e3p+mMuwSWEM57decEwddECFmm+b+id1ImKz/Hbj2HhqeO
         U7ibKgSzhDfI+6avsqZdheDJ0M23sxuqNkoxQEhVyc+a9fhcKYZc71OKFxCSswh0r/DG
         AKg6YgF6mjef28YB+MGd5H/FcqmnInPJvFcqjocbpfsm1mte0hKgcUROz7KhkbIrlvtq
         3IHQ49kfvkohiWKNw0VBjLx2N3LgozAyymKKLlgzKvXTUIw35FZEYnMOPbH1dDtmkUX/
         02Q14xLWe5JqC8ijn4dlBaZtXFozVte5AQujG0pKKeesAVfeakqyYglCNdjt2WMFUZMG
         6MtA==
X-Gm-Message-State: AC+VfDyrebCNhhqK9yCs3MwHMTe4qQojXL367qCtsxNRLK2IjyedUM9a
	mi9WHoWHPaDG7W/iNRwo2P1+Izj/qwLyTXHN9CnX47vL/rCzQuCOkGqghw==
X-Google-Smtp-Source: ACHHUZ4FsBLtWvJiw8alLKANYzApREPdbtJ/bc7socu8WVw4f6/lIVklrLNbH09YhxD/Jylgh8DUdLMh49xQxJn6TJA=
X-Received: by 2002:a05:620a:2591:b0:75b:23a0:e7e2 with SMTP id
 x17-20020a05620a259100b0075b23a0e7e2mr19837912qko.67.1687419180195; Thu, 22
 Jun 2023 00:33:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAMty3ZD64BH-XunimhVjcFF=H0O6zOg34KBMVcUa5hTZLJw0AQ@mail.gmail.com>
 <ee2c980b-c4e7-7058-d527-e9e280002056@denx.de>
In-Reply-To: <ee2c980b-c4e7-7058-d527-e9e280002056@denx.de>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 22 Jun 2023 13:02:47 +0530
Message-ID: <CAMty3ZAEeX6DvZ2M_131oJ_dkvUtJo=CJ+jZhKSKNdUmsdVNsw@mail.gmail.com>
Subject: Re: Rockchip DWC2 issue
To: Marek Vasut <marex@denx.de>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	Kever Yang <kever.yang@rock-chips.com>, Peter Robinson <pbrobinson@gmail.com>, 
	Jonas Karlman <jonas@kwiboo.se>, U-Boot-Denx <u-boot@lists.denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_003302_092932_C645F71C 
X-CRM114-Status: GOOD (  16.23  )
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

T24gVGh1LCBKdW4gMjIsIDIwMjMgYXQgMjowOOKAr0FNIE1hcmVrIFZhc3V0IDxtYXJleEBkZW54
LmRlPiB3cm90ZToKPgo+IE9uIDYvMjAvMjMgMTY6MzcsIEphZ2FuIFRla2kgd3JvdGU6Cj4gPiBI
aSwKPiA+Cj4gPiBIYXMgYW55b25lIHRyaWVkIHRvIHVzZSBkd2MyIGFuZCBlY2hpIHBvcnQgdG9n
ZXRoZXIgd2l0aCBVU0IgZGlzaz8KPiA+IGxvb2sgbGlrZSB0aGlzIGlzIG5vdCB3b3JraW5nIHdp
dGggdGhpcyBjb21iaW5hdGlvbiBvbiBhbnkgUm9ja2NoaXAKPiA+IFNvQydzCj4gPgo+ID4gSGVy
ZSBhcmUgdGhlIGlzc3VlcyB0aGF0IEkndmUgcmVwcm9kdWNlZCBpbiBSSzMzMjggd2hlcmUgdGhl
IGRpc2sKPiA+IGNvbm5lY3RlZCBpbiBFSENJIHBvcnQgaXMgZGV0ZWN0aW5nIGJ1dCBEV0MyIGlz
IG5vdC4gQW55IGNsdWU/Cj4KPiBJIGdlbmVyYWxseSBhdm9pZCB1c2luZyBEV0MyIGFzIGhvc3Qu
IFJQaSAxLzIvMyBkb2VzIHVzZSBpdCBhcyBob3N0LCBidXQKPiBJIHRoaW5rIHRoZXJlIGlzIGEg
aHViIGJldHdlZW4uCgpMb29rcyB0aGlzIGlzIHRoZSBzYW1lIGNhc2UgZXZlbiBmb3IgdGhlIFJv
Y2tjaGlwIFNvQyBzaWRlIGFzIHdlbGwuCgo+Cj4gRG9lcyB0aGUgc3RpY2sgd29yayBpZiB5b3Ug
cGx1ZyBhIGh1YiBiZXR3ZWVuIHRoZSBib2FyZCBhbmQgc3RpY2sgPwoKSSBoYXZlIG9ic2VydmVk
IHRoZSBzYW1lIGJlaGF2aW9yIGFzIGJlZm9yZSBJdCBkZXRlY3RzIHZlcnkgcmFyZWx5LgoKPgo+
IEFsc28sIFJQaSB6ZXJvICg/KSBtaWdodCBoYXZlIHJhdyBob3N0IHBvcnQgb24gaXQsIHdpdGhv
dXQgaHViIC4KCldvcnRoIHRvIHRyeSwgd2lsbCBjaGVjayBpdC4KClRoYW5rcywKSmFnYW4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
