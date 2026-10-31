Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94D05606A31A
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Oct 2026 10:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=x1P3OaTf;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=rojer.me header.i=@rojer.me header.a=rsa-sha256 header.s=main header.b=HM19M2tj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hvB9AGEoM8HxyQG8BgMnvOtjoQ3bVFRZjfr2RpOQ8co=; b=x1P3OaTf80miGJFPRD4zKz5GlO
	zUQXa5X6dk1nQuB4HeLWVUV7IlqsuVJrXx3JDsxdQrgOTsk5VaqWA2FOxWgduLFavnQ9sscuT4Cwg
	wxv2RWtY5V9UVZ4Exgz3yaYULWgGZzl8/CDESmg59OJKsH9ch9sb+43r00hMJcJ2dDf9qz3a+iDLn
	YOKwJWi+6Krz1VPhYUd4OPzt0f5hTG6ZfPaaKjZJAyukq+zhCQZfbC6Q9qMuak2PhhdfMJFQunf5U
	CF15jj/DorVYkRum2k5cfPIUpBLWpk5EzDR1erLaXrOCp8+a5SnDibm2g3redDOsR9Pbz6Q1Tl3Pb
	+Hcv8xzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN6Xx-0000000DDio-1qOA;
	Sat, 31 Oct 2026 10:42:49 +0000
Received: from mail1.rojer.cloud ([88.99.92.76])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN6Xt-0000000DDhx-3dBT
	for linux-rockchip@lists.infradead.org;
	Sat, 31 Oct 2026 10:42:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rojer.me; s=main;
	t=1793443360; bh=orKhTfTJ1loFLWK1gC5AQvr+zdn3IizBZw/adtSa0io=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=HM19M2tj6EbXZb/bdYPKBiqS1WZGxaaXlQL8iTRTsCdIbzH+/igpWkRqByXAFXdwt
	 L9j/QGwr2lAarRbet1+MEYShhpZnK3jcJVqE1TrKuGH1kRfrnNNEj9ERR9uGlvs323
	 /0CT9Y21opwFnlevgLZnGPtbdlgb+qlVvE5J+R2UhHdi7bhUf5W+yYlJFiVfTWpGob
	 acYe+FJr+WeCnIGAzzt2vgnmbZ//uhsX5y5Jp+R/OIRuTWpif6SvBsvNlQbFxVYRZC
	 skvPMKrmOxZ63PdrJw4xEWGI1qcnFkiZIj4PoYaB0LtVj9xmkHlUs0vhSWAGNmEc0z
	 2ak7ritWRnHaw==
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by mail1.rojer.cloud (Postfix) with ESMTPSA id 645E021692
	for <linux-rockchip@lists.infradead.org>; Sat, 31 Oct 2026 10:42:40 +0000 (UTC)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-48ed0b68895so1088847fac.1
        for <linux-rockchip@lists.infradead.org>; Sat, 31 Oct 2026 03:42:40 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvBx4JSrTAcb7Qu+SZpb7H4MU0C8b7+heikQTrt9f+BzYoyAA96KZhLhud/t/ypYCt9PMA2ZBXv+oWsQz25UhlA==@lists.infradead.org
X-Gm-Message-State: AFq9FYKMHKgF+jqB/LUPBzfH69G8IaynOaSlR2RycRPmcVvZ3sfwL+4N
	YYiNsWlREzW/moHQgHLyhSgtI18e3Aj+wFgN+g7YDdtfRyOV4c8jQNI69fymSW+Tk1fmBaHBPW1
	oFxoCwhubub3vcDl7P/HZKOwq5SnCHQ==
X-Received: by 2002:a05:6870:21ca:b0:48f:e363:5cc8 with SMTP id
 586e51a60fabf-4a9077bbf39mr3116106fac.54.1793443359009; Sat, 31 Oct 2026
 03:42:39 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261023235959.2988087-1-rojer@rojer.me> <38baaf87-4d5c-48bc-a11f-a5b6c04c20a8@rock-chips.com>
 <CABFmFwrWL1sej-=xCK-opxn3B9VVy=TaCyRQU43sw=6PY7bcmQ@mail.gmail.com> <4193517.ZaRXLXkqSa@phil>
In-Reply-To: <4193517.ZaRXLXkqSa@phil>
From: "Deomid \"rojer\" Ryabkov" <rojer@rojer.me>
Date: Sat, 31 Oct 2026 12:42:27 +0200
X-Gmail-Original-Message-ID: <CABFmFwoDKspgTcsStz4WKQZ+diRLLzu+MMGaRD2D9JXqDmg1_w@mail.gmail.com>
X-Gm-Features: AclHuK8EOjybxhaUBVSSjy2qBrrG1wOp4iky1FyIolBHsnDnBLbFpYQOr0Uc5JA
Message-ID: <CABFmFwoDKspgTcsStz4WKQZ+diRLLzu+MMGaRD2D9JXqDmg1_w@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Enable SDIO Wi-Fi on NanoPi R2S Plus
To: Heiko Stuebner <heiko@sntech.de>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sergey Bostandzhyan <jin@mediatomb.cc>, 
	Jensen Huang <jensenhuang@friendlyarm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261031_034246_154414_7ECA0AC9 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

eWVzLCBpIGRvdWJsZS1jaGVja2VkIHRoZSBzY2hlbWF0aWNzIGFuZCB0aGlzIGlzIGluZGVlZCBh
IGRpZmZlcmVuY2UKYmV0d2VlbiB0aGUgUjJTIGFuZCBSMlMgUGx1cywgdGhlIGNoYW5nZSBpcyBu
ZWNlc3NhcnkgdG8gbWFrZSB0aGUgd2lmaQpjYXJkIHdvcmsuCnNlbmRpbmcgdjIKCk9uIFNhdCwg
MzEgT2N0IDIwMjYgYXQgMDI6MjMsIEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+IHdy
b3RlOgo+Cj4gSGkgRGVvbWlkLAo+Cj4gQW0gRGllbnN0YWcsIDI3LiBPa3RvYmVyIDIwMjYsIDIz
OjEwOjMxIE1pdHRlbGV1cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIgRGVvbWlkICJyb2pl
ciIgUnlhYmtvdjoKPiA+IEhpIFNoYXduLAo+ID4KPiA+IGFncmVlZCwgaXQgbWFrZXMgbm8gc2Vu
c2UgaGVyZS4gd2lsbCBkcm9wIGluIHYyLCBob2xkaW5nIG9uIGZvcgo+ID4gZmVlZGJhY2sgb24g
cGF0Y2ggMS4KPgo+IE5vIGRpcmVjdCBjbHVlIGFib3V0IHRoZSBib2FyZCBpdHNlbGYsIGJ1dCBJ
IGFzc3VtZSB0aGUgc2NoZW1hdGljcwo+IHNob3VsZCBiZSBjb3JyZWN0IHRoZW4/Cj4KPiBTbyBu
byBjaGFuZ2UgbmVlZGVkIHRoZXJlIGFuZCBqdXN0IHNlbmQgeW91ciB2MiwgSSBndWVzcyA6LSkK
Pgo+Cj4gSGVpa28KPgo+CgoKLS0gCkRlb21pZCAicm9qZXIiIFJ5YWJrb3YKcm9qZXJAcm9qZXIu
bWUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
