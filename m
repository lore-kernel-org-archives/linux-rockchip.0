Return-Path: <SRS0=wP8P=PD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36DD9C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 14:30:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E217561164
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 14:30:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E217561164
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uZlwu9zvbxAki1FOY5uhT5SrnsdetL9axY1u+vq1Pew=; b=4iEohnanRNfwajIXOXj5edNPQ3
	K2oreYWA6Rk7RcD5WrRjKtTNS3oQoal4hXZjIFmwyycfgEfbmngPSD52cqcUL/fz0evYL8LRDeEk3
	uUouyQmifye8z3iNXX7HK3sF8QDus6nBh9VMQmw51nLACnXJ3oh6fOrBtSNDnuySKliE49BQv9Ocv
	qYhyM7IuSndWyknSsJjbX8Xkvf40PxWWi7gu2Z2tkpiuyswoyOz0MO9bJf1Mms8/OexwfghtER7l/
	zJI/NGvHlDsOVv0BngYfw/GrKxxCLZ6RkEINMrVhpW93tF3bkkrSQb8AMf5KyVKpfH4bXM21JnUK6
	cmemzHrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbODw-007bnW-7q; Fri, 15 Oct 2021 14:30:16 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbNyo-007VDX-O4; Fri, 15 Oct 2021 14:14:40 +0000
Received: by mail-wr1-x42f.google.com with SMTP id v17so26721060wrv.9;
 Fri, 15 Oct 2021 07:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=u0LS74NGxs4Ls/GakwMB1m+mPagiusP+lWbngHZ06ko=;
 b=fuZ/x4GU2rmFgoIzrLqjckyOIpI613dnJ2kqkRuaHIaR4+dHGImUHHhrcJr1HMBoUT
 g9QQZ7oqDqqxBtGke4yYq9WOpJumj9DLVvfB3ege/Q5qiGlX5efDDemkfhZtspfjGrE1
 xcHP0/dWDI2XaEDprmBeV/Dzfkxdlh5tSmFvOUV6qaY5Wfwq4ET+9UR+LUEMUacORyzq
 xzBIZ2gjRKm1ghUIefRupZc9zCpTJ+r+x/xA6wW8Uz0SPAOQnH9AtLy7HkmUokWJY14/
 TSCczUZ0t+pkyjRKA0FV2Hnjh/t6dSBmNONPedldjKaSMe9PrznvxNaJQSBplmZfZ9lQ
 8KgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=u0LS74NGxs4Ls/GakwMB1m+mPagiusP+lWbngHZ06ko=;
 b=ItDY4TP5/SmlyPJWqxIAV1TmKz+nE0/X0yNMnNvQKGy+321fYxT/jC9BlplTxwtfZQ
 HPZqtajPnlPRoF6BA+BTf6QxYo+4EhBNnmm56Ti+bTnrVx3e2ITQ1CeAdr+EVtZkXqie
 hDO5+OTKnSRPVKw5WxmhBwdx14kYSMZDF7pqV+pY6kVJhI03ZDANqd8OwyQ5GcKcraHb
 akCdVvxJTiDBfNyy7VroZ2cbqh3LrEFzpomBxnSQGucChcMptvCQpqSJRleyISgcIOSL
 skd4ZKdVaxxwOdNay5OQ2A+fk6J46wo49LT+qt3eTuMs3Q+Lhz2mZJrnUtVoZ1PzVX0x
 6eXg==
X-Gm-Message-State: AOAM533YqDnYWM0Rm42rCVirKIgP/8+WTkVZJHRUCNJZcepL6KCmsLlI
 HmeEJs6DQ+vsKzoqYzgiHw==
X-Google-Smtp-Source: ABdhPJx1KlAErP0MVOhgnRMDJYrRtFEAIhfxUA8d7qKZdigdDGl26QfV464by6KddRDp8E6k11KyRQ==
X-Received: by 2002:adf:bc48:: with SMTP id a8mr14440226wrh.19.1634307277266; 
 Fri, 15 Oct 2021 07:14:37 -0700 (PDT)
Received: from ?IPv6:2a02:810b:f40:4200:8be2:5749:97e2:d75b?
 ([2a02:810b:f40:4200:8be2:5749:97e2:d75b])
 by smtp.gmail.com with ESMTPSA id b19sm11080921wmb.1.2021.10.15.07.14.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 Oct 2021 07:14:36 -0700 (PDT)
Subject: Re: [PATCH v2 0/4] media: HEVC: RPS clean up
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@gmail.com>,
 mchehab@kernel.org, p.zabel@pengutronix.de, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 hverkuil-cisco@xs4all.nl, jc@kynesim.co.uk, ezequiel@vanguardiasur.com.ar
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
References: <20211012143552.661751-1-benjamin.gaignard@collabora.com>
 <21222555.EfDdHjke4D@kista>
 <3c5851ac-3b8a-decc-93c1-01a65b1f8611@collabora.com>
 <1705005.VLH7GnMWUR@kista> <4f8f6da3-70b1-5dd8-27b7-c9f9fd37920b@gmail.com>
 <9d9645a1-9d44-4fec-55e7-5b0a1c69e7ab@collabora.com>
From: Alex Bee <knaerzche@gmail.com>
Message-ID: <7d6df94a-e0bb-b364-5ab1-3ef4d02803dc@gmail.com>
Date: Fri, 15 Oct 2021 16:14:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <9d9645a1-9d44-4fec-55e7-5b0a1c69e7ab@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_071438_905338_8D641871 
X-CRM114-Status: GOOD (  24.98  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkFtIDE1LjEwLjIxIHVtIDE2OjA2IHNjaHJpZWIgQmVuamFtaW4gR2FpZ25hcmQ6Cj4KPiBMZSAx
NS8xMC8yMDIxIMOgIDEyOjMzLCBBbGV4IEJlZSBhIMOpY3JpdMKgOgo+PiBIaSBCZW5qYW1pbiwg
SmVybmVqCj4+IEFtIDEyLjEwLjIxIHVtIDE4OjA4IHNjaHJpZWIgSmVybmVqIMWga3JhYmVjOgo+
Pj4gQ0M6IEFsZXggQmVlCj4+Pgo+Pj4gQWxleCwgcGxlYXNlIHRha2UgYSBsb29rIHRvIHRoZXNl
IHBhdGNoZXMgdG9vLgo+PiBUaGVzZSBwYXRjaGVzIGRvbid0IHJlbW92ZSBhbnl0aGluZyB0aGF0
IHdvdWxkIGJlIG5lZWQgZm9yIHJrdmRlYyAKPj4gaGV2YyAtIGJ1dCBpbmRlZWQgLSB3ZSBuZWVk
IHNvbWUgbW9yZToKPj4gaHR0cHM6Ly9naXRodWIuY29tL0xpYnJlRUxFQy9MaWJyZUVMRUMudHYv
YmxvYi9tYXN0ZXIvcHJvamVjdHMvUm9ja2NoaXAvcGF0Y2hlcy9saW51eC9kZWZhdWx0L2xpbnV4
LTIwMDEtdjRsLXdpcC1ya3ZkZWMtaGV2Yy5wYXRjaCNMMjQyLUwzMDUgCj4+Cj4+Cj4+IHY0bDJf
Y3RybF9oZXZjX3NwczoKPj4gX191OMKgwqDCoCB2aWRlb19wYXJhbWV0ZXJfc2V0X2lkCj4+IF9f
dTjCoMKgwqAgc2VxX3BhcmFtZXRlcl9zZXRfaWQKPj4KPj4gdjRsMl9jdHJsX2hldmNfcHBzOgo+
PiBfX3U4wqDCoMKgIHBpY19wYXJhbWV0ZXJfc2V0X2lkCj4+IF9fdTE2wqDCoMKgIHNob3J0X3Rl
cm1fcmVmX3BpY19zZXRfc2l6ZQo+PiBfX3UxNsKgwqDCoCBsb25nX3Rlcm1fcmVmX3BpY19zZXRf
c2l6ZQo+Pgo+PiBBcyBmYXIgYXMgSSBjYW4gc2VlLCB0aGV5IGFyZSBhbGwgcGFydCBvZiB0aGUg
c3BlYyBhbmQgc2hvdWxkIGJlIAo+PiB0aGVyZWZvcmUgZ29vZCB0byBnbyBpbiB0aGUgdWFwaS4K
Pgo+IERvIHlvdSBoYXZlIGFueSBwbGFuIHRvIHVwc3RyZWFtIHRoZXNlIGZpZWxkcyBpbiBIRVZD
IHVBUEkgPwoKSSBtaWdodCBiZSB1cHN0cmVhbWluZyB0aGVtIGF0IHNvbWUgcG9pbnQsIHllcy4K
CldpdGggdGhpcyBJIGp1c3Qgd2FudGVkIHRvIHVuZGVybGluZSBKZXJuZWogc2FpZDogSEVWQyB1
YXBpIGlzIE5PVCByZWFkeSAKdG8gZ2V0IHVuc3RhZ2VkIHlldC4KCj4KPiBSZWdhcmRzLAo+IEJl
bmphbWluCj4KPj4KPj4gQXMgeW91IG1pZ2h0IG5vdywgZXZlbiBya3ZkZWMgaXMgYSBmcmFtZS1i
YXNlZCBkZWNvZGVyLCBpdCBkb2Vzbid0IAo+PiBmdWxseSBwYXJzZSBzbGljZSBoZWFkZXJzIGlu
IEhXIGZvciBIRVZDIGFuZCB3ZSBuZWVkIHRvIHNldCAKPj4gcmVmZXJlbmNlcyBpbiBTVyB3aGlj
aCByZXF1aXJlcyBsb29waW5nIG92ZXIgdGhlIHNsaWNlcy4gRG93bnN0cmVhbSAKPj4gd2UgaGF2
ZSBhIGhhY2sgdG8gZ2l2ZSBudW1fc2xpY2VzIGluIHY0bDJfY3RybF9oZXZjX3NwcyBmb3IgZG9p
bmcgdGhhdC4KPj4gVGhhdCBjb3VsZCBmdWxseSBnbyBhd2F5LCBpZiBWNEwyX0NJRF9NUEVHX1ZJ
REVPX0hFVkNfU0xJQ0VfUEFSQU1TIAo+PiBjb3VsZCBnZXQgZHluYW1pYyBhcnJheSBjb250cm9s
IHN1cHBvcnQgYW5kIHdvdWxkIG1ha2UgdXBzdHJlYW1pbmcgCj4+IHRoaXMgYSBsb3QgZWFzaWVy
IC0gYXMgZmFyIGFzIEknbSBjb25jZXJlZCB0aGlzIHdvdWxkIGJlIHJlcXVpcmVkIGZvciAKPj4g
UlBpIEhFVkMgZGVjb2RlciBhcyB3ZWxsLgo+PiBBcyBhIGxhc3QgcmVzb3J0IHdlIGNvdWxkIGFs
c28gaW1wbGVtZW50IGEgSFcgc3BlY2lmYyBjb250cm9sIMOgIGxhCj4+IFY0TDJfQ0lEX0hBTlRS
T19IRVZDX1NMSUNFX0hFQURFUl9TS0lQIC0gYnV0IEknZCBsaWtlIHRvIGF2b2lkIHRoYXQsIAo+
PiBrbm93aW5nIGl0IHdvdWxkIGNlcnRhaW5seSBiZSBiZXR0ZXIgZnJvbSBwZXJmb3JtYW5jZSBw
b3YuCj4+Cj4+IEFsZXguCj4+Pgo+Pj4gRG5lIHRvcmVrLCAxMi4gb2t0b2JlciAyMDIxIG9iIDE3
OjU3OjUwIENFU1QgamUgQmVuamFtaW4gR2FpZ25hcmQgCj4+PiBuYXBpc2FsKGEpOgo+Pj4+Cj4+
Pj4gTGUgMTIvMTAvMjAyMSDDoCAxNzozNCwgSmVybmVqIMWga3JhYmVjIGEgw6ljcml0IDoKPj4+
Pj4gSGkgQmVuamFtaW4hCj4+Pj4+Cj4+Pj4+IERuZSB0b3JlaywgMTIuIG9rdG9iZXIgMjAyMSBv
YiAxNjozNTo0OCBDRVNUIGplIEJlbmphbWluIEdhaWduYXJkCj4+PiBuYXBpc2FsKGEpOgo+Pj4+
Pj4gVGhpcyBzZXJpZXMgYWltcyB0byBjbGVhbiB1cCBSZWZlcmVuY2UgUGljdHVyZSBTZXQgdXNh
Z2UgYW5kIGZsYWdzLgo+Pj4+Pj4KPj4+Pj4+IExvbmcgdGVybSBmbGFnIHdhcyBuYW1lZCB3aXRo
IFJQUyBwcmVmaXggd2hpbGUgaXQgaXMgbm90IHVzZWQgZm9yIAo+Pj4+Pj4gUlBTCj4+Pj4+PiBi
dXQgZm9yIG1hcmsgbG9uZyB0ZXJtIHJlZmVyZW5jZXMgaW4gREJQLiBSZW1hbmUgaXQgYW5kIHJl
bW92ZSAKPj4+Pj4+IHRoZSB0d28KPj4+Pj4+IG90aGVyIHVzZWxlc3MgUlBTIGZsYWdzLgo+Pj4+
Pj4KPj4+Pj4+IENsYXJpZnkgZG9jdW1lbnRhdGlvbiBhYm91dCBSUFMgbGlzdHMgY29udGVudCBh
bmQgbWFrZSBzdXJlIHRoYXQgCj4+Pj4+PiBIYW50cm8KPj4+Pj4+IGRyaXZlciB1c2UgdGhlbSBj
b3JyZWN0bHkgKGkuZSB3aXRob3V0IGxvb2sgdXAgaW4gREJQKS4KPj4+Pj4+Cj4+Pj4+PiBUaGVz
ZSBwYXRjaGVzIGFyZSB0aGUgbGFzdCBpbiBteSBiYWNrbG9nIGltcGFjdGluZyBIRVZDIHVBUEku
Cj4+Pj4+PiDCoCBGcm9tIG15IHBvaW50IG9mIHZpZXcsIG9uY2UgdGhleSBnZXQgbWVyZ2VkLCB5
b3UgY291bGQgc3RhcnQgCj4+Pj4+PiB0YWxraW5nCj4+Pj4+PiBhYm91dCBob3cgbW92ZSBIRVZD
IHVBUEkgdG8gc3RhYmxlLgo+Pj4+PiBXaXRoIHlvdXIgY2hhbmdlcywgSEVWQyB1QVBJIGNvbnRy
b2xzIHN0aWxsIHdvbid0IGJlIGNvbXBsZXRlLiBDZWRydXMKPj4+IG5lZWRzCj4+Pj4+IGVudHJ5
IHBvaW50IGNvbnRyb2wsIHdoaWNoIGluIHR1cm4gbmVlZHMgZHluYW1pYyBhcnJheSBzdXBwb3J0
LiAKPj4+Pj4gSSdtIGEgYml0Cj4+PiBsYXp5Cj4+Pj4+IGltcGxlbWVudGluZyB0aGF0IGNvbnRy
b2wsIGJ1dCBJIGd1ZXNzIEkgY2FuIHRha2UgYSBsb29rIGluIGEgCj4+Pj4+IG1vbnRoIG9yIHNv
Lgo+Pj4+PiBya3ZkZWMgYWxzbyBuZWVkcyBtb3JlIGZpZWxkcyBmb3IgSEVWQy4gV2l0aCBwYXRj
aGVzIGNvbGxlY3RlZCBoZXJlOgo+Pj4+PiBodHRwczovL2dpdGh1Yi5jb20vTGlicmVFTEVDL0xp
YnJlRUxFQy50di9ibG9iL21hc3Rlci9wcm9qZWN0cy9Sb2NrY2hpcC8gCj4+Pj4+Cj4+Pj4+IHBh
dGNoZXMvbGludXgvZGVmYXVsdC9saW51eC0yMDAxLXY0bC13aXAtcmt2ZGVjLWhldmMucGF0Y2gK
Pj4+Pj4gZmx1c3RlciBIRVZDIHRlc3Qgc2NvcmUgaXMgcmVwb3J0ZWRseSAxMjEvMTM1ICg4LWJp
dCB0ZXN0cyBvbmx5KS4KPj4+Pgo+Pj4+IEhpIEplcm5laiwKPj4+Pgo+Pj4+IFRoYW5rcyBmb3Ig
eW91ciBmZWVkYmFjaywgZ2V0dGluZyBhIGxpc3Qgb2YgbWlzc2luZyBpdGVtcyBpbiBIRVZDIHVB
UEkKPj4+PiB3aWxsIGRlZmluaXRpdmVseSBoZWxwIHRvIGZpbGwgdGhlIGhvcGUuCj4+Pj4gVGhl
IHBhdGNoIHlvdSBtZW50aW9uIGZvciBya3ZkZWMgYXJlIGFscmVhZHkgbWVyZ2VkIGluIG1haW5s
aW5lIAo+Pj4+IGtlcm5lbCAoYXQKPj4+PiBsZWFzdCBmb3IgdUFQSSBwYXJ0KS4KPj4+Cj4+PiBB
cmUgdGhleT8gV2hhdCBhYm91dDoKPj4+IHZpZGVvX3BhcmFtZXRlcl9zZXRfaWQKPj4+IHNlcV9w
YXJhbWV0ZXJfc2V0X2lkCj4+PiBwaWNfcGFyYW1ldGVyX3NldF9pZAo+Pj4gc2hvcnRfdGVybV9y
ZWZfcGljX3NldF9zaXplCj4+PiBsb25nX3Rlcm1fcmVmX3BpY19zZXRfc2l6ZQo+Pj4KPj4+IEF0
IGxlYXN0IEkgZG9uJ3Qgc2VlIHRoZW0gaW4gbGludXgtbmV4dC4gTWF5YmUgdGhhdCBpbmZvcm1h
dGlvbiBjYW4gYmUKPj4+IG9idGFpbmVkIGluIHNvbWUgb3RoZXIgd2F5Pwo+Pj4KPj4+PiBDZWRy
dXMgbmVlZHMgYXJlIGFib3V0IG51bV9lbnRyeV9wb2ludF9vZmZzZXRzLCBvZmZzZXRfbGVuX21p
bnVzMSBhbmQKPj4+IGVudHJ5X3BvaW50X29mZnNldF9taW51czFbIGkgXQo+Pj4+IGluIEhFVkMg
c3BlY2lmaWNhdGlvbnMgPwo+Pj4KPj4+IFllcywgQ2VkcnVzIG5lZWRzIHRvIGtub3cgd2hvbGUg
bGlzdCBvZiBlbnRyeSBwb2ludHMuIEkgZG9uJ3QgdGhpbmsgCj4+PiB3ZSBuZWVkIHRvCj4+PiB3
b3JyeSBhYm91dCBvZmZzZXRfbGVuX21pbnVzMSwgbGlzdCBjb3VsZCBiZSBwcmUtcHJvY2Vzc2Vk
IC0ganVzdCAKPj4+IG51bWJlciBvZgo+Pj4gZW50cnkgcG9pbnRzIGFuZCB0aGVpciB2YWx1ZXMu
Cj4+Pgo+Pj4gQmVzdCByZWdhcmRzLAo+Pj4gSmVybmVqCj4+Pgo+Pj4+Cj4+Pj4gUmVnYXJkcywK
Pj4+PiBCZW5qYW1pbgo+Pj4+Cj4+Pj4+Cj4+Pj4+IEkgd291bGQgY2VydGFpbmx5IHdhaXQgd2l0
aCBtb3ZpbmcgSEVWQyB1QVBJIHRvIHN0YWJsZS4KPj4+Pj4KPj4+Pj4gQmVzdCByZWdhcmRzLAo+
Pj4+PiBKZXJuZWoKPj4+Pj4KPj4+Pj4+IHZlcnNpb24gMjoKPj4+Pj4+IC0gY2hhbmdlIERQQiBm
aWVsZCBuYW1lIGZyb20gcnBzIHRvIGZsYWdzCj4+Pj4+Pgo+Pj4+Pj4gUGxlYXNlIG5vdGUgdGhh
dCB0aGUgb25seSBwdXJwb3NlIG9mIGNvbW1pdHMgMyBhbmQgNCBpcyB0byBhbGxvdyAKPj4+Pj4+
IHRvIHRlc3QKPj4+Pj4+IEcyIGhhcmR3YXJlIGJsb2NrIGZvciBJTVg4TVEgdW50aWwgYSBwcm9w
ZXIgc29sdXRpb24gaXN1aW5nIHBvd2VyIAo+Pj4+Pj4gZG9tYWluCj4+Pj4+PiBjYW4gYmUgZm91
bmQuIERvIG5vdCBtZXJnZSB0aGVtLgo+Pj4+Pj4KPj4+Pj4+IEdTdHJlYW1lciBIRVZDIHBsdWdp
biBtZXJnZSByZXF1ZXN0IGNhbiBiZSBmb3VuZCBoZXJlOgo+Pj4+Pj4gaHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL2dzdHJlYW1lci9nc3RyZWFtZXIvLS9tZXJnZV9yZXF1ZXN0cy8xMDc5
IAo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBXaXRoIHRob3NlIHBpZWNlIG9mIGNvZGUgZmx1c3RlciBz
Y29yZSBpcyA3Ny8xNDcuCj4+Pj4+Pgo+Pj4+Pj4gQmVuamFtaW4KPj4+Pj4+Cj4+Pj4+PiBCZW5q
YW1pbiBHYWlnbmFyZCAoNCk6Cj4+Pj4+PiDCoMKgwqAgbWVkaWE6IGhldmM6IFJlbW92ZSBSUFMg
bmFtZWQgZmxhZ3MKPj4+Pj4+IMKgwqDCoCBtZWRpYTogaGV2YzogRW1iZWRkZWQgaW5kZXhlcyBp
biBSUFMKPj4+Pj4+IMKgwqDCoCBtZWRpYTogaGFudHJvOiBVc2Ugc3lzY29uIGluc3RlYWQgb2Yg
J2N0cmwnIHJlZ2lzdGVyCj4+Pj4+PiDCoMKgwqAgYXJtNjQ6IGR0czogaW14OG1xOiBBZGQgbm9k
ZSB0byBHMiBoYXJkd2FyZQo+Pj4+Pj4KPj4+Pj4+IMKgwqAgLi4uL21lZGlhL3Y0bC9leHQtY3Ry
bHMtY29kZWMucnN0wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMTQgKysrLS0tCj4+Pj4+PiDC
oMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpwqDCoMKgwqAgfCA0
MyAKPj4+Pj4+ICsrKysrKysrKysrKystLS0tCj4+Pj4+PiDCoMKgIGRyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9oYW50cm8vaGFudHJvLmjCoMKgwqDCoMKgwqDCoMKgIHzCoCA1ICstCj4+Pj4+PiDCoMKg
IC4uLi9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZzJfaGV2Y19kZWMuYyB8IDI3ICsrKy0t
LS0tLS0tCj4+Pj4+PiDCoMKgIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaW14OG1fdnB1
X2h3LmPCoMKgIHwgNDggCj4+Pj4+PiArKysrKysrKysrKystLS0tLS0tCj4+Pj4+PiDCoMKgIC4u
Li9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaDI2NS5jwqAgfMKgIDIgKy0KPj4+
Pj4+IMKgwqAgaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB8wqAgNiArLS0KPj4+Pj4+IMKgwqAgNyBmaWxlcyBjaGFuZ2VkLCA4
NCBpbnNlcnRpb25zKCspLCA2MSBkZWxldGlvbnMoLSkKPj4+Pj4+Cj4+Pj4+PiAtLSAKPj4+Pj4+
IDIuMzAuMgo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+Cj4+Pj4KPj4+Cj4+Pgo+PgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
