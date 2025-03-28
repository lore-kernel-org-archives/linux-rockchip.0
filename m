Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E59FC36010
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Mar 2025 09:04:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=trO6z9a4w5CXBeBLz/BCjzfi8Lt+SlI3y+WY60VCv9I=; b=dMMNpe5P6uQ3lS
	3H9hBqmDXMeRmzwed4w34UgU0Ht7H2umqdiVYkNRunLkzP2VSFQDHNNLiDn+3CIIINQafaTxjICA3
	gIkuLmLLOCQz0c0sefT1m8F0CjYrjZj9PBuEeRDai/lBMBD8s3k86ypMwSVIStD/QY5/rfrcKANsy
	Rd4Lg1otDEpslKBiT0WcxdkG2SScmYN6H58oAgqlC/LpxaS1aNrbcpPRXtCphjR2BcQQZpF/hK66w
	6S8GLRZfRSHpRoHQ3bLfuECMfEocytWtxRElte4tSbzMKl8AisnpQsZspEd8UlFJOJtGhK1BEIg06
	3Db5jNVXDPAWrxNHCddg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty5ds-0000000CzcQ-0uIu;
	Fri, 28 Mar 2025 09:04:44 +0000
Received: from mail.commetro.pl ([217.61.16.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty5cj-0000000CzSk-0Zap
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Mar 2025 09:03:35 +0000
Received: by mail.commetro.pl (Postfix, from userid 1002)
	id E13C983E3E; Fri, 28 Mar 2025 10:01:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=commetro.pl; s=mail;
	t=1743152496; bh=COht1CALZmZz8MRkow5xVDQUyVzx29Nu6ozA/Y0jgb4=;
	h=Date:From:To:Subject:From;
	b=tm94DZy3upeTneyHu7jAZCYN087Mdup7TG/WEFcD5Iy5EL9xWGtDM7G9SamBfoztP
	 +nlMbnxF4Kjj3rnL1iGn1hZR6AuZMZtwxdD6YnzUPkMVlv0wwDup54RdxDDgLK1mPA
	 2k+mCqK2wET2al9mmrkt5d668eEZOnOhnBCe5QEOnAVjGEzz+JDOxnZOpZCmb1eG+H
	 5D6dkvbBRq+iTeB0xvQzoDQU2OA1fK4qOt+F5/FZf1JLadMFW/E4kWgoDvmf6ywg/m
	 48lt+YIkFC/402za6F4Z0kCv8bEcnKs3WhwOFenq9ysDWEuEO1e76AJE9wnkFyb2FC
	 w8CMNzYlpeRwQ==
Received: by mail.commetro.pl for <linux-rockchip@lists.infradead.org>; Fri, 28 Mar 2025 09:01:23 GMT
Message-ID: <20250328084500-0.1.1o.jo9y.0.eygerl35n8@commetro.pl>
Date: Fri, 28 Mar 2025 09:01:23 GMT
From: =?UTF-8?Q?"Jaros=C5=82aw_Kownacki"?= <jaroslaw.kownacki@commetro.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Pytanie_o_ofert=C4=99?=
X-Mailer: mail.commetro.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250328_020333_836095_A3A532F5 
X-CRM114-Status: UNSURE (   1.32  )
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

RHppZcWEIGRvYnJ5LAoKQ3p5IHBvdHJ6ZWJ1asSFIFBhxYRzdHdvIGFrdHVhbG5pZSBub3d5Y2gg
a2xpZW50w7N3ID8KClNrdXRlY3puaWUgcG9tYWdhbXkgcm96cG9jenluYcSHIHJvem1vd3kgaGFu
ZGxvd2UgeiBrbGllbnRhbWkgemFpbnRlcmVzb3dhbnltaSBQYcWEc3R3YSBvZmVydMSFLgoKWmFw
cmFzemFtIGRvIGtvbnRha3R1IHp3cm90bmVnby4KCgpQb3pkcmF3aWFtIHNlcmRlY3puaWUKSmFy
b3PFgmF3IEtvd25hY2tpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
