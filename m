Return-Path: <SRS0=Ii8/=IT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FCF6C433DB
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Mar 2021 20:14:54 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A76F761944
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Mar 2021 20:14:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A76F761944
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PQ8sIt27I5uQmCwHUU498IzSrCnjp3FircTKarG1G1w=; b=q9zqv2q5hRANzflZt17iHXOTi
	LhIw9s4MbRRc1VYyaabWg/3UKaHwY96WR2RRktsMXI4G025emSZSYcGzGm5iulMHI6v1pp+I7xsgq
	Mq3eFOqEeIuG8XrsAymMT/J74v152kW80Z04a8Aj1v7dOBHAreTUAN63yU1cYiIDDCRmhHU80jIOU
	mn4Ypysa8TmnvSETbfO8uqT0wephqKkYVe2c+8DcXrybBRnHNMMFhS0l2GhbNLrEiNta6WQAQd9Ny
	g1EqkhmPXG7xdx2qELOng6S7JnS0AZjEdnQmUT77hxJGNgWMCT4PgOW8tNwOmUHTfx+s4rAwqvLnD
	DRtx10BLA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lO4TI-00AKoQ-2N; Sun, 21 Mar 2021 20:14:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lO4T9-00AKmT-2O; Sun, 21 Mar 2021 20:14:44 +0000
Received: from p508fc3a3.dip0.t-ipconnect.de ([80.143.195.163]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lO4T8-0007Oi-Ht; Sun, 21 Mar 2021 21:14:38 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Thomas Schneider <qsx@chaotikum.eu>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: add infrared receiver node to
 rockpro64
Date: Sun, 21 Mar 2021 21:14:34 +0100
Message-Id: <161635763247.767241.7420445041544765170.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310122821.126408-1-qsx@chaotikum.eu>
References: <20210310122821.126408-1-qsx@chaotikum.eu>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_201442_751239_41B650E6 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
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

T24gV2VkLCAxMCBNYXIgMjAyMSAxMzoyODoyMSArMDEwMCwgVGhvbWFzIFNjaG5laWRlciB3cm90
ZToKPiBUaGlzIGFkZHMgdGhlIFJvY2tQcm82NOKAmXMgaW5mcmFyZWQgcmVjZWl2ZXIgdG8gaXRz
IGR0c2kuICBUaGUgY29uZmlndXJhdGlvbiBpcwo+IGFsbW9zdCB0aGUgc2FtZSBhcyBvbiByazMz
Mjgtcm9jazY0LCBleGNlcHQgZm9yIHRoZSBHUElPIHBpbnMsIGFuZCB0aHVzIGFkYXB0ZWQKPiBm
cm9tIHRoZXJlLgoKQXBwbGllZCwgdGhhbmtzIQoKWzEvMV0gYXJtNjQ6IGR0czogcm9ja2NoaXA6
IGFkZCBpbmZyYXJlZCByZWNlaXZlciBub2RlIHRvIHJvY2twcm82NAogICAgICBjb21taXQ6IDdj
N2YwNDEzMDlmNzNiMDVkMjE5ODBmODhmMjkzMDUyNTVlMTI2ZWUKCkJlc3QgcmVnYXJkcywKLS0g
CkhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
