Return-Path: <SRS0=XIeQ=IO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1920C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Mar 2021 15:00:59 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 62F2E65079
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Mar 2021 15:00:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 62F2E65079
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wtO2MPR22srqMXIBfTkHGeNvmJDCCEXXKapU7YEFyr0=; b=MICsbFpzgB6u+/oa8/L99D4SB
	T9pWhsC0KoC31xYdSTcQCzyPBZku9fs5mPXHKNfRG6grWa7drnC/ggxn35Z8Qz9zw5mRoa31kfzNm
	L8cUUM59tBj/9sIAX8xsMGhu6hrMYQTLzrn7a3AN622IGnvt0VfDGrvTMxjt48Tf+FWSCXHmUfTbo
	VQ0xi/EDYjuUKNYIPup2oLs6XIrJJHvmwWGw66n3M/vpwZVsNCq3ClaEunYOdWFM7PPPAsxgK+YJK
	EgGzetTy+NWuvtCcV215mCOP1rtcHwzvtcNTAU+Qs5xOF1YmTPJe8Hfxd3Aw0j9J84mEEKaia1f2r
	D0FaRRSdw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMBBj-000zrt-Tf; Tue, 16 Mar 2021 15:00:51 +0000
Received: from mail-il1-x12a.google.com ([2607:f8b0:4864:20::12a])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMBBY-000zqJ-9x; Tue, 16 Mar 2021 15:00:42 +0000
Received: by mail-il1-x12a.google.com with SMTP id i18so12896995ilq.13;
 Tue, 16 Mar 2021 08:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Tbz96+rxny8J82X7hbX/9a0BDi/EpimzsJipF8+VGW0=;
 b=Y2PCILLXRZsUqAuogyJ/UoyDOEq4tP4EBO1vrj+uVaXsJ5Fl4h/7646bRdN+YXGj9E
 BVNPLIWW3quPffAmdxBGfgZq8bgt2PixVrMNj3XKcBPIJhUWV+fqzflTHE1gbUvmHVpi
 G11Oc0LMEuQER9rwarwtPxvuZwwbiIYeFevUR5nmykGwLxXO96zJFkQsy9r0+B0iMNAv
 IN3ZY3MtsG0i4axEj6ugrTsk0ROHQ7CCiABkLRrCLCR5iggLJtwXZfRC+sZBqslHb2Sb
 ocewQtfp+w7e4TB3K/VNn2R4JR047Qd2srwywiiUYvD74rewhANrd2IUq48f6859Fvgs
 sEOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Tbz96+rxny8J82X7hbX/9a0BDi/EpimzsJipF8+VGW0=;
 b=quPHMHeC9iwH5SFdFYVFVDP+WZDVCiQIb7G88LUpRnbRCr0bKuprcCnObvOZzXzVzv
 AYWezQCE5SYGHkpehqWVw+SJ25W9WF28o+qb2eweyFrlA2sUlBtwZ8KVLulst0uoV9ZR
 LN5x5zj6WScUEffYIG8VpSjP0ONmEOFrBTQlrlu501Ix5IJqjp1srrxiVV6llOZaiJZr
 4Aw90cACoj/f5p2GvrHPBVcuizroUGEYgpm0r+tQx1gcWSTzX0y363Y+zMwAAQ+KD+sK
 mrASBMxPzv3AqVoTlwNUJl42l6rm6b4gVA678nYu9KmX3jhQ17200Gt22VwzFWmd8XtW
 joVg==
X-Gm-Message-State: AOAM532riwWRgnNRyqFfxT8a+84rMvrYunSHa5oUzz6yPFLlMBc/Pi6W
 bFJYOt2TAwPdexDpZQvFDX8=
X-Google-Smtp-Source: ABdhPJxWl/Ss8IgojCB80uGaYNl8T5f5XPhHAYATvsrNV++iLm2d8c0Mc45pByMjb+pj0XvUcLcjKg==
X-Received: by 2002:a92:d2c3:: with SMTP id w3mr4390045ilg.181.1615906839205; 
 Tue, 16 Mar 2021 08:00:39 -0700 (PDT)
Received: from localhost.localdomain
 (tunnel525895-pt.tunnel.tserv15.lax1.ipv6.he.net. [2001:470:c:1200::2])
 by smtp.googlemail.com with ESMTPSA id r18sm9553739ilj.86.2021.03.16.08.00.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 08:00:38 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jagan Teki <jagan@amarulasolutions.com>, Chen-Yu Tsai <wens@csie.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Tianling Shen <cnsztl@gmail.com>, Johan Jonker <jbx6244@gmail.com>,
 David Bauer <mail@david-bauer.net>,
 Jensen Huang <jensenhuang@friendlyarm.com>,
 Marty Jones <mj8263788@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] rockchip: rk3399: Add support for FriendlyARM
 NanoPi R4S
Date: Tue, 16 Mar 2021 23:00:33 +0800
Message-Id: <20210316150033.15987-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <CAMuHMdWYrS=YT7F7erM-e6xhDME4judx-T7rdFGi7CpW1_iqkg@mail.gmail.com>
References: <CAMuHMdWYrS=YT7F7erM-e6xhDME4judx-T7rdFGi7CpW1_iqkg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210316_150040_464955_D4A0D45F 
X-CRM114-Status: GOOD (  19.49  )
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

SGkgR2VlcnQsCgpPbiAyMDIxLTAzLTE2IDAyOjIzIEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnRA
bGludXgtbTY4ay5vcmc+IHdyb3RlOgo+IFBlcnNvbmFsbHksIEknbSBub3Qgc28gZm9uZCBvZiB0
aGUgPGZvbz4tJXUgbm9kZSBuYW1lcywgYW5kIHByZWZlcgo+IDxmb28+LTxmdW5jdGlvbj4uIMKg
V2l0aCB0aGUgZm9ybWVyLCBpdCdzIHdheSB0b28gZWFzeSB0byBoYXZlIGEgc2lsZW50Cj4gb3Zl
cnJpZGUgaW4geW91ciAuZHRzKGkpIHN0YWNrLgo+IENmci4gY29tbWl0IDQ1ZjVkNWE5ZTM0ZDNm
ZTQgKCJhcm02NDogZHRzOiByZW5lc2FzOiByOGE3Nzk5NTogZHJhYWs6Cj4gRml4IGJhY2tsaWdo
dCByZWd1bGF0b3IgbmFtZSIpCgpIb3cgYWJvdXQgdXNpbmcgYGxhbi1sZWRgLCBgc3lzLWxlZGAg
YW5kIGB3YW4tbGVkYCBoZXJlPwoKPgo+IEdye29ldGplLGVldGluZ31zLAo+Cj4gwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgR2VlcnQKPgo+IC0tCj4gR2VlcnQgVXl0dGVyaG9l
dmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1t
NjhrLm9yZwo+Cj4gSW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9w
bGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dAo+IHdoZW4gSSdtIHRhbGtpbmcgdG8gam91
cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4K
PiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCAtLSBMaW51
cyBUb3J2YWxkcwoKVGhhbmtzLApUaWFubGluZy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
