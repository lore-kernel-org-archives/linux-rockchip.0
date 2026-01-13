Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30257D30CC2
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 20:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=meHhAXeHAhx7eRq9plvHX+ZbFSgQdRwslfGr7vLsCY0=; b=b2mbVQ8aJFBleB
	BTE1w3mJZzmumtag35o3sBe5k610Hi1H+duJPPKJ9Fa7JE9c6s6lrFUhkN8DJ2Y8kijrTEzitDUKc
	eEJfMg+fUQXu/94/Ldfzext3Bh24lgtvf9/bp9so6z4wAbaav+o0D/nct5oV27Ijdv+SJpt42lrFO
	EuyXOgrXDxyTMClf72BYi4eUnkj0ARNffBglrCcHsoqTC/p2FdhVgCxeAwBAkeubyJgzh31p8NQTH
	HNJzWNBu4KcC4TxszjLqhTNUWZTPagtl7UbCu3q2il1zKZgjMdlWi0j1MS/fBabD3D911WiSSNFMs
	fZ31tzU201vN1CkdiLrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfl7L-00000007hT4-0z2u;
	Tue, 13 Jan 2026 20:35:55 +0000
Received: from mail-oa1-x2f.google.com ([2001:4860:4864:20::2f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfl7J-00000007hSf-0L3u
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Jan 2026 20:35:54 +0000
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-3f5aaa0c8d7so6035338fac.3
        for <linux-rockchip@lists.infradead.org>; Tue, 13 Jan 2026 12:35:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768336551; x=1768941351; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6WxGsgh2CAg7ruexq6+FLP8qTdSDXPFg9Ux3XBnOTuc=;
        b=QHuh+p80SFaO4c2V1iRdMSMgd3TCDhiiFYgxprAXNp0XEfK6D1qcYOFmp8o++sjozV
         DaZeJPulCDl6KqkQnBUtmCzZzS7PV+d9gAwVIacsJordYQce73fxBcH2PBe58eNbzBIz
         UZ4BZHbM8BAxSC5anXCDBfHaJpajBnYUInSM6lweA81Is/FLg5BcDbQtc9iKT3IW0qT3
         e5BxfXVyysIYJIiNPenuMFHNPwL6T7bVCdF64m56hocJsdwbSGclPdFMb6PVTGq3Irq1
         f3G0AXVNXVtD4eDPgNg23/p40fxtB5O+k44ExLHk4ny7C5CaBrsejBCHCgGzBefKNViZ
         KYYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768336551; x=1768941351;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6WxGsgh2CAg7ruexq6+FLP8qTdSDXPFg9Ux3XBnOTuc=;
        b=T8vqtdfSLUOVolCz/QbnZhfwX26IAz4hjVaBlvfouRvXjRb4lo/lQwNos8rw79KFXX
         vlbia1X5uJy0aekGkArFgPjgZqTSbq+9szRdO4pjv4UavPTXXPaiEktswcA3s1pKLUhP
         IZm17fKq9WyDEzc9sOoydH2Hh9FWU7ylXaGukl7zvAbReYpbanNyghEzZLoLbTyYrSoR
         e61zI4D7e/+YIOYpn661BYtrCMbTQZ6pD8cOKn0LOIcgP7EeROZfKGdx+Ih5vteo11G8
         06wWZSg3nn/Z/7CsfqH5kBQGEWbtHTjXn0bH6Zp+GtcJc/+pV4WStp4yiWlzXPMqLMdc
         p/WA==
X-Forwarded-Encrypted: i=1; AJvYcCXe87UVtaDaHT+inKRU7fF5uDu4678upWyhmWWtikN6ojrRRjVRM/rl9/9tZo3hnpYNNG4fcwQfb3xp7qQPww==@lists.infradead.org
X-Gm-Message-State: AOJu0YzMbT3NP2UXxZbWMcCY8rzCXLUlAkTe80V3DsBS1lXEtDC80AIn
	nlEFKoCNB+BZSjhiwQ8GadOGFyWpP5vahitKvc98zk9baOPvHC3eoJBiS3RAgzVkSlU+NkBmRRx
	IP74whoc4SrUjvz0ygh7L+NEJ9U9SUyw=
X-Gm-Gg: AY/fxX7qVbd036pnasHs0D9Z3n2pHqHJwUn6nVluuu4gkeUhqQ708RPbA7EMfA0AEP4
	tYOALK4tmdVpgv9ZbbLHwXpfPYrhxrjGkha/d8SL1oe6rpcC7qdb45frR9yPSoB+rTR2e7035Qf
	1cP88xbSD6dU3rp8QiEZAekcWkcGgka46bvpn12BASfPF6BmLa2LabJRSAEXIO6uuSsImZFjhUe
	gXuSyu/6bp4JR2oz+Mpm0ZJlch+tFoytVVHde213u5M36r2z5dZnpwhS9UQiUdYCDzzgKjAwKbU
	oHo+wpTmYx9gXYbNcdoYtrN7vQA=
X-Received: by 2002:a05:6820:430e:b0:65d:5e1:ed1f with SMTP id
 006d021491bc7-661006aa2e3mr181003eaf.29.1768336551453; Tue, 13 Jan 2026
 12:35:51 -0800 (PST)
MIME-Version: 1.0
References: <1768267105-127385-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1768267105-127385-1-git-send-email-shawn.lin@rock-chips.com>
From: Marco Schirrmeister <mschirrmeister@gmail.com>
Date: Tue, 13 Jan 2026 21:35:40 +0100
X-Gm-Features: AZwV_QgnTmo_KhsM_u7wvf8FEfx06bkPqZST7JgYwnI7K3SwWLXpl2ZhIKD6Bls
Message-ID: <CAGJh8eAXC+CAMfjxOP8LUwR-xcQGgbwyxFkNLgAujFiP6c2hOg@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] Fix sd card support for RK3576
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, 
	John Clark <inindev@gmail.com>, Tianling Shen <cnsztl@gmail.com>, 
	Detlev Casanova <detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_123553_144606_F3049A13 
X-CRM114-Status: UNSURE (   8.92  )
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

SGkgU2hhd24sCgpPbiBUdWUsIEphbiAxMywgMjAyNiBhdCAyOjE54oCvQU0gU2hhd24gTGluIDxz
aGF3bi5saW5Acm9jay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4gVGhpcyBzZXJpZXMgZml4ZXMgdGhp
cyBtZXNzIGJ1dCBvbmx5IGFkZHMgc2xvdC1ncGlvIHN1cHBvcnQgZm9yIFJLMzU3Ni1FVkIxLgo+
IE90aGVyIGJvYXJkcyBhcmUgYWxzbyBtaXNzaW5nIHNsb3QtZ3BpbyBzdXBwb3J0LCBidXQgZm9s
a3MgYXJlIGFsbCBjY2VkIGZvcgo+IGNoZWNraW5nIHRoZSBib2FyZHMgdGhleSBhcmUgdXNpbmcu
Cj4KPiBQbGVhc2UgcmV2aWV3IGFuZCB0ZXN0CgpJIHRlc3RlZCB0aGlzIHNlcmllcyBvbiB0aGUg
RnJpZW5kbHlFbGVjIE5hbm9QaSBSNzZTLgpXaXRoIHRoZSBhZGRpdGlvbiBvZiAnY2QtZ3Bpb3Mg
PSA8JmdwaW8wIFJLX1BBNyBHUElPX0FDVElWRV9MT1c+OycKaW4gdGhlIGJvYXJkIERUUywgdGhl
IMK1U0QgaG90LXBsdWcgbm93IHdvcmtzIGNvcnJlY3RseS4KCkhvd2V2ZXIsIGV2ZW4gd2l0aCB0
aGlzIGZpeCwgdGhlIE5hbm9QaSBSNzZTIHN0aWxsIHN1ZmZlcnMgZnJvbSB0aGUKY29uc3RhbnQg
NDAwa0h6IHJldHVuaW5nIGxvb3Agd2hlbiBydW50aW1lIFBNIGlzIGVuYWJsZWQuIEkgd2lsbCBz
ZW5kCmEgdjIgb2YgbXkgZHJpdmVyIHF1aXJrIHRvIGFkZHJlc3MgdGhpcyBib2FyZC1zcGVjaWZp
YyBpbnN0YWJpbGl0eS4KCkxpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8y
MDI2MDExMDAxMDcxNS4xNjEwMTU5LTEtbXNjaGlycm1laXN0ZXJAZ21haWwuY29tL1QvI3QKClRl
c3RlZC1ieTogTWFyY28gU2NoaXJybWVpc3RlciA8bXNjaGlycm1laXN0ZXJAZ21haWwuY29tPgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
