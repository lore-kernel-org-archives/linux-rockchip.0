Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00F03CD98DA
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jun 2026 12:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Y6OdSTGbtdKgDIZtpZyXoyWTb7Y/HZdXgQ5Xh/h46g=; b=iuIVxs+lzlFCZs
	YTTOImnfmRSwX0PbIRrQb0d3jvGoVWHeZ+5oOoUlQWSYB2C/NwbYJb2v/FH0oXqMkv2JMVlqs0reE
	Y07FeH74Zn67buqSLyL+06/ZuX69SgaMSEc24aiu5aLoq6GarLdXeQPReCs89V50pDmX0u3fCVcX2
	Gfgj777QtoIHc0pf8s7RPVH383FS52/c8EM/Qo8JydSMG/gViJ/jXrCf/hybk7g3S/vdstVAy9WrH
	05b3n2aDCnmd46bG6Nw3yarA6nAzYEYxFAkiPFbmctg+1R3EafQenE5COwFQn4KfdssLlpLmOuTYP
	mbVdf0U3o6mbDYAFSKJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZT9j-0000000FmkH-06JY;
	Tue, 16 Jun 2026 12:44:39 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZT9g-0000000Fmja-00eT
	for linux-rockchip@lists.infradead.org;
	Tue, 16 Jun 2026 12:44:37 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-68e5f7c1131so7693693a12.2
        for <linux-rockchip@lists.infradead.org>; Tue, 16 Jun 2026 05:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781613873; x=1782218673; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xWwKLVsUIM6MytpX93dCt41pC6tdKxTrq94U49oj1AE=;
        b=MlDy8BTLDBon8C8u/ik4dmm582HzjPO96Jwm+fY6WSFywf5T8iNTzkSmcVndP2o7qj
         4s7ycJP5SydtIQC5Ap8Sspt7V38UUWLYfgAQ9EUHvo5vObcobETP6/I3uvOANuNwlPLW
         vOy4Mg2KjqOooJMH2+jESn5uvSytVhn92xCvcdL7EU7mKg2qH2DtGBPbQbP/cNyHOyx8
         F4MZF0BiRSV9rDTFjlEuAhINQrfpkfb7xwuZKcq1Nu6cPP7j0knOdpfW8mN3m/uceGzD
         MTO+wCER3QZT9V5h5mkG01zl1WY+BGrOBuCWmwO4T9E/MkcZQnNbKbOB3lv9C2AoWUY5
         TmXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781613873; x=1782218673;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xWwKLVsUIM6MytpX93dCt41pC6tdKxTrq94U49oj1AE=;
        b=RLuaxQJC/P0Miir81+iljeux2WH4WnOBTc77RqWPZEGSgXuwyFwTuVa9dG0XTunkVm
         Vz7VbFJpIipeA6pZb8zHF4gGFITWTkMCkoIFZ4HUL2KM1RzfDg+GqjKqA31JlisXBZYl
         OnU8IhTh+edQ+bA4n7T+8x/7rs67f0UynQq0usuJV1mj4LuBmpLCq4MGLsHYKwD46kb8
         o0gcM6bzyhKHdofBozsi2kS8CniCtI59f9U4M9eTqdFFTOmmweVpISq0zmnJGoWNH69q
         lirY0ZJnxqZBTczDDP272t7RxBWy8+iYhkmXviKucwDzUwtm3hp2WUJsU2pKNZLXp8pS
         y+0g==
X-Forwarded-Encrypted: i=1; AFNElJ+Srp//kL2Ng/Ec2HtfAPVUbT2xcZQHWJszaVELgFc+zf6wzcHd373HgZOdRAx/KtaoW8NsUW8HZySgowaf9g==@lists.infradead.org
X-Gm-Message-State: AOJu0YxXRicZpryDOtKIqphbycJcxTGTgZMmH4QV4BzzwBdwgUszwQ/f
	IgwZSr8COEat2Qlmpup3EgzMsHdLQRdgh/7uHNqAmJ0fCJyKgGghTB2/
X-Gm-Gg: Acq92OGJuM47mqd5ey1CW4FsQgUdnfsINEXjVt6aj/DX8mXLTZyn5scE85+dR2B97Jk
	ZvZlrU1JTzb+n5ig16zMcuh/emXqY9B9Uca8vPcmGPjOLrpKx1leN0WbB+YCO4RXLdfXRTLPHND
	XZ/sGp5S/RKnwkIM93s4B/z1f8ui9EkT6NyKWkttFTbatju/U6pgX9uBbhk4nRLTcrYHW+gJpBV
	Ds07LYmarYJKKnId8ObqLr302lPMRuqk2tdfnOlVuyOu9L8lBs2DO7evecqTboct9o7+tSUt+oX
	YBgGi67G2O3EPab2MBoLaNbzduDSnKcqzsBN266fqyI/pNtONU3voiS5OzeG4oqZRcGYufJ087E
	TTaZ+DkoDRVCsuDbS5er2Rqoa9WMAhvEzmyvGwow8C251kT101r6UwomEsA96uZqdtY8b4Ex97r
	IEMVQEWEpCj1pSRQmvyrwxEajfX3l2SjJR8PPlWOtZNDRZzGeK3kFQOd/f91fgH3TWiPwe8jIr3
	R87BSmDHJEC41uv3jUw
X-Received: by 2002:a17:907:948e:b0:bfb:1e1c:3197 with SMTP id a640c23a62f3a-c043d9af661mr198808866b.41.1781613871788;
        Tue, 16 Jun 2026 05:44:31 -0700 (PDT)
Received: from smtpclient.apple (89-66-237-154.dynamic.play.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bfdb4420570sm641059666b.11.2026.06.16.05.44.31
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jun 2026 05:44:31 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.600.51.1.1\))
Subject: Re: [BUG] rkvdec-vdpu383-h264: wrong pixels at horizontal de-blocking
 edges y=4 and y=12
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <1f178828-2cba-4120-bc6d-bb3be7b24073@symple.nz>
Date: Tue, 16 Jun 2026 14:44:16 +0200
Cc: Detlev Casanova <detlev.casanova@collabora.com>
Message-Id: <5ABBE81F-3560-402D-B9D3-94F6D9842A4B@gmail.com>
References: <52a01f1f-5b36-429b-96cf-f1a0a1c8f5e4@symple.nz>
 <5939C396-3A70-458F-8E6B-A55319929564@gmail.com>
 <4b3a9f32-807a-4b9e-8df2-d22f872d288e@symple.nz>
 <2CB1844A-3DB7-4973-98E0-0C141DD38B45@gmail.com>
 <1f178828-2cba-4120-bc6d-bb3be7b24073@symple.nz>
To: Simon Wright <Simon@symple.nz>,
 linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
X-Mailer: Apple Mail (2.3864.600.51.1.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_054436_044693_7F252214 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFNpbW9uIFdyaWdodCA8U2ltb25Ac3ltcGxl
Lm56PiB3IGRuaXUgMTEgY3plIDIwMjYsIG8gZ29kei4gMDg6MTU6Cj4gCj4gSGkgUGlvdHIsCj4g
Cj4gU2hvcnQgdmVyc2lvbjogdGhlIGluLXRyZWUgcG9ydCBkaWRuJ3QgYWN0dWFsbHkgaGF2ZSB0
aGUgd2FybXVwIHJ1bm5pbmcgKGl0IG5lZWRzIGEKPiBwcm9iZS10aW1lIGJ1ZmZlciBhbGxvYyAr
IGEgcG1fcnVudGltZV9yZXN1bWUgaG9vaywgbm90IGp1c3QgdGhlIGRlY29kZSBjb2RlKS4gUmF0
aGVyCj4gdGhhbiBwaWNrIHRoYXQgYXBhcnQsIGhlcmUncyBhIGNsZWFuIHBhdGNoIHRoYXQgd2ly
ZXMgaXQgcHJvcGVybHkgLSBhbmQgSSd2ZSBub3cKPiB2YWxpZGF0ZWQgaXQgb24gaGFyZHdhcmUu
Cj4gCj4gVGhlIHBhdGNoIGlzIHNlbGYtY29udGFpbmVkIGFuZCBuZWVkcyBubyBkZXZpY2V0cmVl
IGNoYW5nZSAobWFpbmxpbmUgYWxyZWFkeSBtYXBzIHRoZQo+ICJsaW5rIiByZWdpc3RlciBiYW5r
IGl0IHVzZXMpOyBnaXQgYXBwbHktY2xlYW4gb24gNy4wIGFuZCA3LjEtcmM3Ogo+IAo+ICAgIGh0
dHBzOi8vZ2l0aHViLmNvbS9TeW1wbGVOWi9ya3ZkZWMtdmRwdTM4My1oMjY0LWJ1Zy90cmVlL21h
c3Rlci9maXgKPiAKPiAgICAgCgpTaW1vbiwKCkFmdGVyIG11bHRpcGxlIHVzZXJzIHRlc3RzIEni
gJltIGhhcHB5IHRvIGNvbmZpcm06IHdpdGggYWJvdmUgcGF0Y2ggYXBwbGllZCBvbiBtYWlubGlu
ZSA3LjEgaDI2NCBkZWNvZGVyIHdvcmtzIHBlcmZlY3RseS4KClNvOgoKVGVzdGVkLWJ5OiBQaW90
ciBPbmlzemN6dWsgPHBpb3RyLm9uaXN6Y3p1a0BnbWFpbC5jb20+Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
