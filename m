Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E67D5CFC52F
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 09:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PgfzN+Upw/Jbwk/wxlu6AVTLpm3Q9wGx7uUs8kZ+gqM=; b=OqDgANbjYbxrPO
	r4UWgj7uL7YcYq64xHUa1FRN8CHhjFMJmNOGhBdQmRDxSAAxxp9HsPMWatiIuFRU+G5YAcS20mtwc
	KJ+EIgAFLAANMhqqL6G9OKn+61J/Huc4CpwMa3OhJV0HiCOUeWke25o28Cf5oo1FrS+BwLEavlEQW
	AJyo7kdKopSfICGKn+p7ayMcPMz93jDDbfOGFe1yGli5nX1hCIOJhIMPG+ibU6zDXJXJB7KWlbWyh
	vbu8YHQSewZkUCsoukG3sXt5ct1OZLp03VDOpTJJDgyScAKgXJTv5tIr7AATW98JUWb6bNUPzNolg
	6TUoowbT0ffEbWIg08qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Hql-00000004cZP-2ekc;
	Mon, 14 Oct 2024 09:58:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0HaK-00000004Z62-1y1N;
	Mon, 14 Oct 2024 09:41:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=uLuSOnIKTDUr1b3Y37tkpjiPZ4FItYSw5P1gi506wlo=; b=DdqjH1Nv3cJo4lGVC5Cr9M9ugT
	Pl1RUEXZEEFBW9+kR0W31NOi+Kg6DKIaGyj+L660Xw3/uNWo26Cwxgp7RNys+2BAXm/kmaEVga9PQ
	FZJM9ZffatUXEjocR9Hzcmnh0nRHwsyy6OEf1Mf2e0ODC73bRtD0fyUBDev58qN00rYw5g5FPM8+O
	24goYv6VuNRkcWIjiJaVei0LsxQqqghIKRjT6CjF6Q0T/vQLtMpJnsXi5k261KnwL5tc6IKAU0cgi
	CpPdc0Sdd+XpPix1iJNwYxzmuVkJF55g1iWcZmXJ4IxejViCaGOBxrdeRKblgQfT8X2rNTHAlCEju
	xgE04X7A==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0HaH-00000006JMy-1KQU;
	Mon, 14 Oct 2024 09:41:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=uLuSOnIKTDUr1b3Y37tkpjiPZ4FItYSw5P1gi506wlo=; b=YwdRrv5A8ufzJdVqzIeRcxOzXo
	qW2QNkcmMiso/Z8yFOHhvo3lImCp5xKMEaWqvowPdATTRFRB3OVeQy3HS7/Cnl+iZWC94/ppF4pBp
	kdlNq8xvMAGSbSJg53X6MDnspg5vIEpFJOAWuppnbVFipl009VCrj4IUBnEeGU1SLdOj9les/Fn1D
	m1D/seHfdRN5sxA2/Rlrs/Gf0Mv/lDGY37t09OxUS4ztr0PX1C8ctJnmwU06uNkE6cUGs+LXzL7jq
	HBH6MzFWUk7kM1OBP2yj9kx1tbK+vJQRpQNf4nknkAzTQms8yRuEdh8TXZtR38K1rzfE5xPBOGVRY
	4zxSl1dw==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t0Ha5-0006uK-H9; Mon, 14 Oct 2024 11:41:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: conor+dt@kernel.org,
	Karthikeyan Krishnasamy <karthikeyan@linumiz.com>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	alexandre.belloni@bootlin.com
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-rtc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v3 0/6] Add support Relfor Saib board which is based on Rockchip RV1109 SoC
Date: Mon, 14 Oct 2024 11:41:34 +0200
Message-ID: <172889888554.115816.9413952717396718584.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240912142451.2952633-1-karthikeyan@linumiz.com>
References: <20240912142451.2952633-1-karthikeyan@linumiz.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_104149_536823_31541689 
X-CRM114-Status: GOOD (  10.28  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 12 Sep 2024 19:54:45 +0530, Karthikeyan Krishnasamy wrote:
> Rockchip RV1109 is compatible with Rockchip RV1126.
> In this series, adding required missing peripheral in
> RV1126 and its pin mux.
> 
> Relfor Saib board is equipped with 1GB of RAM and 4GB of eMMC
> Pheripherals like Bluetooth 4.2, Wifi 5G, audio-codec,
> ir transmitter and receiver, etc
> 
> [...]

Applied, thanks!

[2/6] ARM: dts: rockchip: Add watchdog node for RV1126
      commit: cbad02491459d64522852da07736ddc1f04cbaef
[4/6] dt-bindings: vendor-prefixes: Add Relfor labs
      commit: d0c9f9b848d0ee57e785c393cd4d618b5753e68d
[5/6] dt-bindings: arm: rockchip: Add Relfor Saib
      commit: c1386c02d5d457a1713c8e866102c4418a1c736c
[6/6] ARM: dts: rockchip: Add Relfor Saib board
      commit: bdb2696ac5786ed3f43520e700347fe2152ea199

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
