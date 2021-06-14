Return-Path: <SRS0=bEZ5=LI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41D3DC48BE6
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 13:33:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 04E8B611CE
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 13:33:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 04E8B611CE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tjo9WpQ+wyvhf+8BM6eoA5mCNaduyKNknsImDdFU6Uk=; b=PMp5cbwxsIHTqn
	bn8LaI1XwSkdaFcrUxXlt7NsN6x0CzneI6RixDcmtCz/48swOMxeF3LNco8EybrOrKz+bfIiW8Fmg
	3aa1PQqTgaVmryzh3lGuyjmMi0UwUqFn6sWnfP5kQsnitzahijEDz/0vT5IRneggdOdjmhswLtc1G
	DXUHLQM62mMNXOosee5uyzhLjgIpIzcaPchgjnTPEfY4QgYhHi2tAvXlIE1MbywZaQJb1qmQboSsV
	KNta5SFU1i4K2pMvQ9n2aIq07WymLqSDGEYwIxwjYZbAAg4cRQq9XuXci0SIqYH8CvTTqe45wlUHr
	XCHe0giPC0w4+7Wa0n7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsmib-00EHlE-GH; Mon, 14 Jun 2021 13:33:33 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsmiY-00EHk5-Gb
 for linux-rockchip@lists.infradead.org; Mon, 14 Jun 2021 13:33:32 +0000
Received: by mail-qt1-x82c.google.com with SMTP id t9so8500589qtw.7
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Jun 2021 06:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=cAUqeEpvWCkYWomZHT8Du/PXR9Hb0hXmraoq1aYdJeI=;
 b=pjAEL3RklamT2ea9ks/JNUzw0Kpgv4zYuHuOL6SFc5mRQeVO99/7YT5gy5JVYZ4/Iw
 3AYgtTRyl1fymKmlRu4eQBHOfx488ruY60Wjj4kvx4pVsdk6sY5WecqGPr+DTh2SniM1
 7wtYNmPY26n5X7qrbIqj2ytr9thPyiS/f36pPdntQFodAYSKtWoB3OsjFCwaCLB6unXf
 jarKxmU45MHI5BRKbhBJKhXptH3nOlPGMx+ADeCmvHsLBAinbdSxfGZVG0ECRWHa6jMa
 Rbr8b9hb8uza+KYOedL9UhIQ9fBroWOPasYZ51WQgu5yp56+bnfeXN31/s6v9QMdZpoW
 zTRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=cAUqeEpvWCkYWomZHT8Du/PXR9Hb0hXmraoq1aYdJeI=;
 b=dAo0twu0gl8VGDUpQ+MEkze5pExArbMkuK5UvkOPVElyFjaIlTsYVIAfM/mhkk6gYr
 bzuZS9SZZEyVR2BckHiAPWVnUFHbiivnrvhU6M81QwXeb41cK8vHawoA2b9ZuFGCIrxM
 ifUlxm2IACa1DXQmS95RULkhmuEX4YoZB8QAF29HFZ+xCYVBQyWjBnFfF4VBRMA7EVMG
 bQREzdfyq2J92eUa7XdkPEFWXaN75DIuMarIdh6XrEtGd/W4KDxRW+K1qnzXDnV+DMWh
 6iT26DZTObfMCcYEIWN3Y3kwyHUkSu1oHiha+Di1J/RD3lOy/NDJt1Bfz+ex7pkArCVH
 eamg==
X-Gm-Message-State: AOAM530S3GVVCQDl03+v8oYTHZwtWFhBlo5fd8ZQxNfN2PNvc6YavRau
 1iks6hWclbj8cz8EwY0JE6zOMw==
X-Google-Smtp-Source: ABdhPJyYC+nZRV+fy4AzCGkEGO6Ybe9Z+87K1jGmsTNrB9WnRW+68Auv6i4mlFxbSA9N1CDorD5IXg==
X-Received: by 2002:a05:622a:d1:: with SMTP id
 p17mr9570218qtw.141.1623677607558; 
 Mon, 14 Jun 2021 06:33:27 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168])
 by smtp.gmail.com with ESMTPSA id l6sm10217007qkk.117.2021.06.14.06.33.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Jun 2021 06:33:26 -0700 (PDT)
Message-ID: <d18bfce0b7cbd18594faa6b1013e27e6719f0a71.camel@ndufresne.ca>
Subject: Re: [PATCH v2 7/8] media: hevc: Add scaling matrix control
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Ezequiel Garcia <ezequiel@collabora.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, Hans Verkuil <hverkuil@xs4all.nl>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org, 
 s.hauer@pengutronix.de, festevam@gmail.com, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, emil.l.velikov@gmail.com, andrzej.p@collabora.com,
 jc@kynesim.co.uk, jernej.skrabec@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Date: Mon, 14 Jun 2021 09:33:25 -0400
In-Reply-To: <96e63be705b04b40a943307c81ed71e8c573ef96.camel@collabora.com>
References: <20210610154442.806107-1-benjamin.gaignard@collabora.com>
 <20210610154442.806107-8-benjamin.gaignard@collabora.com>
 <87a1e585-688e-7c4d-b9a9-24f42772a1a8@xs4all.nl>
 <d5b010c8-c0c5-8800-b2c3-9371923ca10c@collabora.com>
 <96e63be705b04b40a943307c81ed71e8c573ef96.camel@collabora.com>
User-Agent: Evolution 3.40.1 (3.40.1-1.fc34) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210614_063330_629873_7D366685 
X-CRM114-Status: GOOD (  34.45  )
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

TGUgbHVuZGkgMTQganVpbiAyMDIxIMOgIDA5OjUwIC0wMzAwLCBFemVxdWllbCBHYXJjaWEgYSDD
qWNyaXTCoDoKPiBPbiBNb24sIDIwMjEtMDYtMTQgYXQgMDk6NDMgKzAyMDAsIEJlbmphbWluIEdh
aWduYXJkIHdyb3RlOgo+ID4gCj4gPiBMZSAxNC8wNi8yMDIxIMOgIDA5OjI3LCBIYW5zIFZlcmt1
aWwgYSDDqWNyaXTCoDoKPiA+ID4gT24gMTAvMDYvMjAyMSAxNzo0NCwgQmVuamFtaW4gR2FpZ25h
cmQgd3JvdGU6Cj4gPiA+ID4gSEVWQyBzY2FsaW5nIGxpc3RzIGFyZSB1c2VkIGZvciB0aGUgc2Nh
bGluZyBwcm9jZXNzIGZvciB0cmFuc2Zvcm0KPiA+ID4gPiBjb2VmZmljaWVudHMuCj4gPiA+ID4g
VjRMMl9IRVZDX1NQU19GTEFHX1NDQUxJTkdfTElTVF9FTkFCTEVEIGhhcyB0byBzZXQgd2hlbiB0
aGV5IGFyZQo+ID4gPiA+IGVuY29kZWQgaW4gdGhlIGJpdHN0cmVhbS4KPiA+ID4gQ29tcGFyaW5n
IEgyNjQgd2l0aCBIRVZDIEkgbm90aWNlZCB0aGF0IHRoZSBjb3JyZXNwb25kaW5nIGZsYWcgZm9y
IEgyNjQgaXMKPiA+ID4gY2FsbGVkIFY0TDJfSDI2NF9QUFNfRkxBR19TQ0FMSU5HX01BVFJJWF9Q
UkVTRU5ULgo+ID4gPiAKPiA+ID4gU2hvdWxkIHRob3NlIG5hbWVzIGJlIGFsaWduZWQ/IEFsc28s
IGl0IGlzIHBhcnQgb2YgUFBTIGZvciBIMjY0IGFuZCBTUFMgaW4gSEVWQywKPiA+ID4gaXMgdGhh
dCBkaWZmZXJlbmNlIGNvcnJlY3Q/Cj4gPiAKPiA+IEluIElUVSBzcGVjaWZpY2F0aW9ucyAoIjcu
NC4zLjIuMSBHZW5lcmFsIHNlcXVlbmNlIHBhcmFtZXRlciBzZXQgUkJTUCBzZW1hbnRpY3MiKSB0
aGlzIGZsYWcgaXMgZGVmaW5lIGxpa2UgdGhhdDoKPiA+IHNjYWxpbmdfbGlzdF9lbmFibGVkX2Zs
YWcgZXF1YWwgdG8gMSBzcGVjaWZpZXMgdGhhdCBhIHNjYWxpbmcgbGlzdCBpcyB1c2VkIGZvciB0
aGUgc2NhbGluZyBwcm9jZXNzIGZvciB0cmFuc2Zvcm0gY29lZmZpY2llbnRzLgo+ID4gc2NhbGlu
Z19saXN0X2VuYWJsZWRfZmxhZyBlcXVhbCB0byAwIHNwZWNpZmllcyB0aGF0IHNjYWxpbmcgbGlz
dCBpcyBub3QgdXNlZCBmb3IgdGhlIHNjYWxpbmcgcHJvY2VzcyBmb3IgdHJhbnNmb3JtIGNvZWZm
aWNpZW50cy4KPiA+IAo+ID4gU28gZm9yIG1lIHRoZSBuYW1pbmcgaXMgY29ycmVjdC4KPiA+IAo+
IAo+IFRoZSBiaXRzdHJlYW0gaXMgcmVhbGx5IHBhcnNlZCBpbiB1c2Vyc3BhY2UgKGdzdHJlYW1l
ciwgZmZtcGVnLCBjaHJvbWl1bSkuCj4gTm90IGFsbCBiaXRzdHJlYW0gcGFyYW1ldGVycyBuZWVk
IHRvIGJlIHBhc3NlZCBhcy1pcywgYmVjYXVzZSB0aGUga2VybmVsCj4gaXMgYWN0dWFsbHkgYSBz
b3J0IG9mIGxvdy1sZXZlbCBsYXllciBpbiB0aGUgZGVjb2RlciBzdGFjay4KPiAKPiBJIHRoaW5r
IGl0J3MgcHJvYmFibHkgbW9zdCBhcHByb3ByaWF0ZSB0byBmb2xsb3cgb3VyIEguMjY0IGludGVy
ZmFjZQo+IHNlbWFudGljcywgc2VlIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51
eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC9jb21taXQvP2lkPTU0ODg5YzUxYjgzM2Qy
MzYyMjhmOTgzYmUxNjIxMmZiZTgwNmJiODkuCj4gCj4gVGhlIEguMjY0IHN0b3J5IGdvZXMgbGlr
ZSB0aGlzOgo+IAo+ICogRGVmYXVsdCBzY2FsaW5nIGxpc3QgaXMgdXNlZCBmb3IgZGVjb2Rpbmcs
IGJ1dCBjYW4gYmUgbW9kaWZpZWQKPiAgIGJ5IGEgYml0c3RyZWFtLXByb3ZpZGVkIHNjYWxpbmcg
bGlzdC4KPiAgICAKPiAqIFRoZSBzY2FsaW5nIGxpc3QgbW9kaWZpY2F0aW9uIGNhbiBiZSBpbiBT
UFMgb3IgaW4gUFBTLgo+IAo+ICogRm9yIGVhY2ggZnJhbWUsIHRoZSBTUFMgYW5kIFBQUyBoZWFk
ZXJzIHdpbGwgdGVsbCBpZgo+ICAgYSBtb2RpZmllZCBzY2FsaW5nIGxpc3QgbXVzdCBiZSB1c2Vk
IGZvciBkZWNvZGluZywKPiAgIGFuZCBpZiBpdCdzIHByb3ZpZGVkIGluIHRoZSBTUFMgaGVhZGVy
IG9yIHRoZSBQUFMgaGVhZGVyLgo+IAo+IFRoZSB1c2Vyc3BhY2UgcGFyc2VyIG11c3QgdGFrZSBj
YXJlIG9mIHRoaXMsIGFuZCBwYXNzCj4gYSBzY2FsaW5nIG1hdHJpeCB0byB0aGUga2VybmVsIHZp
YSBWNEwyX0NJRF9NUEVHX1ZJREVPX0gyNjRfU0NBTElOR19NQVRSSVgsCj4gc2V0dGluZyBQUFNf
RkxBR19TQ0FMSU5HX01BVFJJWF9QUkVTRU5ULgo+IAo+IFRoaXMgZmxhZyBpcyBhdCB0aGUgUFBT
IGNvbnRyb2wsIHNvIHRoZSBzY2FsaW5nIG1vZGlmaWNhdGlvbgo+IGNhbiBiZSBhcHBsaWVkIG9u
IGVhY2ggZnJhbWUuCj4gCj4gSW4gb3RoZXIgd29yZHMsIHRoZSBrZXJuZWwgaW50ZXJmYWNlIGlz
IHNpbXBsZXIsIGl0IGp1c3QKPiByZWNlaXZlcyBhIHNjYWxpbmcgbWF0cml4IGFuZCBhIGZsYWcg
dGVsbGluZyBpZiBpdCBtdXN0IGJlIHVzZWQgb3Igbm90LiAKPiAKPiBXZSBzaG91bGQgcHJvYmFi
bHkgY2xhcmlmeSB0aGUgZG9jdW1lbnRhdGlvbiwgc28gdGhpcyBwcm9jZXNzIGlzIG1vcmUgY2xl
YXIuCj4gCj4gRnJvbSB0aGUgSEVWQyBzcGVjLCBpdCBzZWVtcyB0aGUgcHJvY2VzcyBzaG91bGQg
YmUgc2ltaWxhci4KPiBUaGUgb25seSBkaWZmZXJlbmNlIGlzIHRoZSBTUFMgInNjYWxpbmdfbGlz
dF9lbmFibGVkX2ZsYWciIHBhcmFtZXRlciwKPiB3aGljaCBkb2Vzbid0IGV4aXN0IGluIEguMjY0
Lgo+IAo+IE5pY29sYXM6IHdoYXQgZG8geW91IHRoaW5rPwoKSSBiZWxpZXZlIGl0cyBhIGZpbmUg
ImRyaXZlciBjb252ZW5pZW5jZSIuIEluIHRoZSBzZW5zZSB0aGF0IHRoZSBmbGFnIG1pZ2h0IG5v
dApoYXZlIGJlZW4gc3RyaWN0bHkgbmVlZGVkLCBidXQgbWF5IG1ha2UgdGhlIGRyaXZlciBjb2Rl
IHNpbXBsZXIuIFdoZW5ldmVyCnBvc3NpYmxlLCBhbmQgd2l0aGluIHRoZSBzcGVjLCBJJ2QgYWdy
ZWUgdG8ga2VlcCB0aGluZ3MgYXMgY29uc2lzdGFudCBhcwpwb3NzaWJsZS4KCkZyb20gdGhlIGRv
YywgdGhlcmUgc2VlbXMgdG8gYmUgYSAiZGVmYXVsdCIgb3IgImZsYXQiIHZlcnNpb24gb2YgdGhl
IHNjYWxpbmcKbWF0cml4IGluIEgyNjQuIEkgdGhpbmsgaWYgSSBoYWQgbm90aWNlIHRoaXMgYmVm
b3JlLCBJIHdvdWxkIGhhdmUgcHVzaGVkIGZvcndhcmQKdGhlIHNhbWUgc2VtYW50aWMgYXMgdGhl
IE1QRUcyIHF1YW50aXNhdGlvbi4gSW4gTVBFRzIsIHRoZSBxdWFudGlzYXRpb24gY29udHJvbApp
cyBzZXQgdG8gaXQncyBkZWZhdWx0IHZhbHVlIGluIHRoZSBjb250cm9sIGZyYW1ld29yay4gV2hh
dCBJIGxpa2Ugb2YgdGhpcwphcHByb2FjaCBpcyB0aGF0IHRoZSBjb250cm9sIGJlY29tZXMgYWx3
YXlzIHZhbGlkLiBQZXJoYXBzIHRoZXJlIGlzIHNvbWUKZGlmZmVyZW5jZXMgaGVyZSBhbmQgdGhl
cmUgSSdtIG5vdCBub3RpY2luZyB0aG91Z2guCgpTZW1hbnRpY2FsbHksIGl0IHdvdWxkIGFsc28g
YmUgdG90YWxseSBkaWZmZXJlbnQgaWYgdGhlcmUgaXMgYSBIVyBmYXN0IHBhdGggdG8KdGhlICJm
bGF0IiBzY2FsaW5nIG1hdHJpeCwgaW4gd2hpY2ggY2FzZSB5b3UgbmVlZCB0aGF0IGZsYWcgdG8g
ZW5hYmxlIGl0LiBJCnRoaW5rIHRoZSBmYWN0IG9uZSBwcmVwZW5kIFNQUy9QUFMgaXMgc2ltcGx5
IHRvIGhlbHAgbG9jYXRlIHRoZSByZWxldmFudCBwYXJ0IG9mCnRoZSBzcGVjaWZpY2F0aW9uLgoK
PiAKPiBUaGFua3MsCj4gRXplcXVpZWwKPiAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
