Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACDF8CCFA0D
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 17:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ouhUw+5bHxojv8dtEwNLa5bWQe6wI7natzUDrP/Jcc=; b=LEpMMyGayPhECC
	v/X+YGlvxnuVT0h79VI3E9ONYVwrWmM3L6hXyKI22gg5S0TMtOlDmoBzeOh7KCK1NCKqW2jGOQE3c
	JyDKqyXukcZYOLBDG0P7IyAvznKkK7DOoRGKVEnXBDu5XE39DqyMU0NOMt0feXYGjYqrjEU6sMVAH
	hkmVyxvxmgiJSKzAIjLdS6666f860v60CpYy7OH/ejoDox6ktUsf0lMfXtIbDxZH601k9G6PdU2CR
	tOBZn043qlP0p0aXVqRdUrRzZgBDO8dIJXjdjkSUiKbhN8/0JzasL5AM6bq1Gm8QNve5DWy4Ih/Vw
	FTe0TdS3qhi8ImQtKzaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGhcf-0000000EClc-30ta;
	Wed, 05 Nov 2025 17:48:41 +0000
Received: from mail-il1-x135.google.com ([2607:f8b0:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGhcd-0000000ECkm-2asx
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 17:48:40 +0000
Received: by mail-il1-x135.google.com with SMTP id e9e14a558f8ab-43325879139so321025ab.1
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Nov 2025 09:48:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762364918; x=1762969718; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Lygen16zLdj3/qSpC1w6kd1TkDatfIqYWayqL60qWI=;
        b=YkawqgXd5nb1tk07a2OgmpqpoW3BfYUqXjAVtZ4UAbqZRNtlM7VAP4xEjTWPK3X88C
         Y8VXuhXvrnr7yOd+w7Hn3yu6tPhtjK8Yn/EOs1kCNfr8SBpT1tFT30v5WRxuYdeghVrw
         ZLkoM2SZMkNHyTUeJknKTK3LT7hmrStrp7x5F8yseM1WamzJZ0A6WYBdLdt/hUN9aa3e
         J07jY/0x09z6wSR2vhyC8uIdCGHsTZH6yCfJ9OFsb7Maw/A4jeK4Sq0ZYe18PxUkeUL2
         1XRIZ/8mF7GKP6AhS+yST2Gvry12hsHSD09TnvBZhrAnWAbpzTsNow/2oa4CoMsyz52Q
         gBUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762364918; x=1762969718;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4Lygen16zLdj3/qSpC1w6kd1TkDatfIqYWayqL60qWI=;
        b=pgTqJI/wdVBPZdgQb0JaSe2KpaX0mKcWQyzCY00kUlLIR6QJ/zUijleT5WESxMmj77
         BM5XbLklJoeGrmmv2U3zlAIC/Neunuwp/4CMVw99gQqG3g+fvb5ruE7M0pvxPU3ywVz5
         /MIncJ6wlCu+nNzaqBT+kMBgzkqNapGT+8ZpHoKiNBCGE138mnUqNXA2ebN8gabob9LA
         gBpWUHD2fqE1xSUrRKU+uKcCdo8lj7gAa6vC1HOAkBLMelSi8Qs4snQwADdE8etRHuzX
         HlzSFXvGdomDKkxbw3nvFbOg5cPl0vlXl9N3noAldzcKfHvuJL25FRPnY1x93D+K20WU
         EGnA==
X-Forwarded-Encrypted: i=1; AJvYcCUbYysJWcoAljf5FTMB7utyrpGQdPfMTuxWIttcpYRDX9CMHaZeSInifVmj+yaoR4IcKOB7C7OiplrgFGiDqA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx3E7ULIFwsYZhn2g0A50vvcs9C588veHJ3Rdj5XtlxZIup7gPL
	Wz2oRMfLVrj66iA178BA6hlyXR10RPlzd6Q4Tk1DQ2O2uxz0pcykxRRyfOXR8gqGXghVj4y6lRL
	ya88zex3ENQC7BqDrIreaMz7AElrFCRc=
X-Gm-Gg: ASbGncsWsz3CyLu1XQAyX4+pJQWa9l3JcVQhs4iU3PHkmMRUhXXkT6wVOkC6cuSVUmO
	JgQ4rSK2vQmgOyeIKUC+NpAijikNtGqy1T6IOox4MY1oqj6tEEUF9/djZkcoumZdS7elibGdrXA
	TZiVd58k8nZxzcSbnF3NsJx1hS9ZRUE6PvBu/hhpAkjyWid3SXRARLWWJq/CXrRTk+OXX2rbDfh
	SXE/FN6yCtvieFZ9/eqpPpYPGuSz8AWl829UVt4hh2dE1sKVqT4Y/L9Kvg=
X-Google-Smtp-Source: AGHT+IESPh3Zp6kX3yx51i95egMnB1vGG4OHMopI5uoOGEv2Yij+EGoP+CRn5oZqwvocW51qOJGjEJ7NVTiI8hKF3vg=
X-Received: by 2002:a92:ca06:0:b0:433:1e74:9a52 with SMTP id
 e9e14a558f8ab-433407c94b5mr57812695ab.15.1762364918164; Wed, 05 Nov 2025
 09:48:38 -0800 (PST)
MIME-Version: 1.0
References: <20251105051335.17652-1-naoki@radxa.com> <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
In-Reply-To: <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
From: Joseph Kogut <joseph.kogut@gmail.com>
Date: Wed, 5 Nov 2025 09:48:02 -0800
X-Gm-Features: AWmQ_blbuKZWvuocKW6wXZhPwiwb1CEhSyKCm4kqRXygBeqGBHvga6tqEnb_944
Message-ID: <CAMWSM7gezjVSoF+-7ivboTeB=5gQAE-QVrbAbKu3M=obmb3Axg@mail.gmail.com>
Subject: Re: [PATCH v6 0/3] Add Radxa CM5 and IO Board
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	jonas@kwiboo.se, kever.yang@rock-chips.com, honyuenkwun@gmail.com, 
	quentin.schulz@cherry.de, dsimic@manjaro.org, pbrobinson@gmail.com, 
	amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_094839_656965_45B2DD3E 
X-CRM114-Status: UNSURE (   9.89  )
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

SGVsbG8gYWxsLAoKT24gV2VkLCBOb3YgNSwgMjAyNSBhdCA0OjE14oCvQU0gRlVLQVVNSSBOYW9r
aSA8bmFva2lAcmFkeGEuY29tPiB3cm90ZToKPgo+IEknZCBsaWtlIHRvIGNsYXJpZnkgdGhlIHNp
dHVhdGlvbiByZWdhcmRpbmcgdGhlIHY2IHBhdGNoIHNlcmllcyBJIHN1Ym1pdHRlZC4KPgo+IFRo
ZSBvcmlnaW5hbCBkZXZpY2UgdHJlZSB3b3JrIGZvciB0aGUgUmFkeGEgQ001IGFuZCBJTyBCb2Fy
ZCB3YXMKPiBhdXRob3JlZCBieSBKb3NlcGggS29ndXQuIEkgdG9vayBvdmVyIHRoZSByZXNwb25z
aWJpbGl0eSBvZiBnZXR0aW5nIGl0Cj4gdXBzdHJlYW1lZCB3aXRoIGhpcyBhZ3JlZW1lbnQuCgpJ
J2xsIGNvbmZpcm0gdGhpcy4gSSd2ZSBiZWVuIGluIGNvbW11bmljYXRpb24gd2l0aCBOYW9raS4g
VGhleSBtYWRlIGEKbGFyZ2UgbnVtYmVyIG9mIHJldmlzaW9ucyB0byBteSBvcmlnaW5hbCBwYXRj
aCBzZXJpZXMsIHdoaWNoIEkgdGhpbmsKaGF2ZSB0ZWNobmljYWwgbWVyaXQuIEkgc3VnZ2VzdGVk
IHRoZXkgc3VibWl0IHRoZSBwYXRjaGVzIHRoZW1zZWx2ZXMsCmFuZCBnYXZlIHRoZW0gZXhwbGlj
aXQgcGVybWlzc2lvbiB0byBhZGQgbXkgU2lnbmVkLW9mZi1ieSBhbmQgQ0MgbWUuCgpJIGFzc3Vt
ZSB0aGlzIHdhcyB0aGUgY29ycmVjdCB3YXkgZm9yIHRoZW0gdG8gY29udGludWUgdGhlIHdvcmsg
SQpzdGFydGVkLCBidXQgaWYgbm90LCBwbGVhc2UgbGV0IHVzIGtub3cgdGhlIGJlc3Qgd2F5IHRv
IHByb2NlZWQuCgpCZXN0LApKb3NlcGgKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
