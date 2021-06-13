Return-Path: <SRS0=g/fF=LH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A891EC48BDF
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Jun 2021 16:28:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 45387610FB
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Jun 2021 16:28:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 45387610FB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KVrGw4R3M6f4Z+VlEEniZBLbpNQ4LlHo/l94QtKRu98=; b=psQ8uulQrJJID4
	y5pzVbvKUa+2KkRJjDUvo3S0xDIYTmbpUVk1S60hIIBOeCAfa+VeAJS1tySUBI5/OQkbUL2kq3SAq
	Id/nyIFKM9vd/Ug1l7iqwA8ojkc85RqJZvcBxogfUNZKreKyzmCOSOLRL9MEX4nwxGrnUN0QlJaMT
	YoWVFqvBD0sjublJ5ZztGZspnr+OdFypgYxSe9We0rz84wESa05i+jRVpkCGUKreeXbu3j5pFWKmJ
	LEhT7XQ+iKLFNzXyhLOUUKU1/O0VL9fq5MzDJQCbskPIFO6bjHNiDXQPwcfh5m0f4X7R+m2L8fBVX
	RU8QFUAp882olZhZ+EHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsSxv-00AjIF-U8; Sun, 13 Jun 2021 16:28:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsSxN-00Aj6M-Es; Sun, 13 Jun 2021 16:27:31 +0000
Received: from p508fc96c.dip0.t-ipconnect.de ([80.143.201.108]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lsSxK-0005DC-Cb; Sun, 13 Jun 2021 18:27:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add support for USB on helios64
Date: Sun, 13 Jun 2021 18:27:22 +0200
Message-Id: <162360159829.3586115.1742671278980783598.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210611081414.1448786-1-uwe@kleine-koenig.org>
References: <20210611081414.1448786-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210613_092729_542951_BFB0F3B9 
X-CRM114-Status: GOOD (  10.51  )
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

T24gRnJpLCAxMSBKdW4gMjAyMSAxMDoxNDoxNCArMDIwMCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3Jv
dGU6Cj4gVGhpcyBlbmFibGVzIHRoZSBVU0IgaGFyZHdhcmUgbmVlZGVkIHRvIGFjY2VzcyBkZXZp
Y2VzIG9uIHRoZSBzb2NrZXRzIEoxCj4gYW5kIEoxMy4KCkFkZGVkIHRoZSBtaXNzaW5nICI7IiBh
bmQKQXBwbGllZCwgdGhhbmtzIQoKWzEvMV0gYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBzdXBw
b3J0IGZvciBVU0Igb24gaGVsaW9zNjQKICAgICAgY29tbWl0OiA1MTA5NGRlYjMzMDYyM2ExNzJi
ODBmN2YxY2I0M2YyZDZlMTY1YzRmCgpCZXN0IHJlZ2FyZHMsCi0tIApIZWlrbyBTdHVlYm5lciA8
aGVpa29Ac250ZWNoLmRlPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
