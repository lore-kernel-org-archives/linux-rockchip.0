Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D9E5E8FDBE
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Dec 2025 14:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BmcB0Je6pF0FLythuXQIadg9alrABqOtEvJrHy8WQEo=; b=3AlhTAexTabvTn
	N1scX1h3yhOxslkJ4GOBcifvh+DoD84Vj+saOLjv/uNet2uHX+RS11sSXOcKzryiYxvYDmVDKjwSo
	mgujwIszZJchDet1gLzqXqGjmhR6EbEwvqZCRBnqusElw8E5Dqs60AhRjC1Vj4uR9rHWNunGzEzOy
	pM0Cit6t0o9UIdzSBBOhY7ZWTrIcKjGngtqUJ9mBikxn1UdmjIzjrKDYNk7WygXLe0TDyV7zsJXwc
	EsVSm2aCtzH1wZOGPbtz9/A40ZguDPAd654nQSw2i2zENLQQwcS5qF0lRn70cg0F73LWo7cTSgVzT
	wkB0PM0kjSPre/7GXcrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaE3D-00000003m94-2zEE;
	Mon, 29 Dec 2025 14:16:47 +0000
Received: from mail.fontri.pl ([51.195.90.156])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaE3A-00000003m8W-2GzC
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Dec 2025 14:16:46 +0000
Received: by mail.fontri.pl (Postfix, from userid 1002)
	id 1ADA7AC63B; Mon, 29 Dec 2025 15:05:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=fontri.pl; s=mail;
	t=1767017758; bh=Kb7u+lszG/nXqIAGpk/hByhDC/8HGhmWaIRwB9KIYkQ=;
	h=Date:From:To:Subject:From;
	b=ZbPlGe/sn46f9tF393vWlRrV1ZgdjwpG1bMOEZwm26I/kChznrZrztVKJffqd0W5T
	 CXxKuE7TOZw87Ml+RC9hhrQAkz153cOF1WVackh6aIO9nvSWz4rfvzvmXXAcXPFASv
	 dLWwAbi1d3BDxp4nw2UwWlHOe9Rhwq/jRz8ubs8W8Cy/VaaoZ3LBtUrCpZJn7v6N+N
	 xdYhqCzpiws5OjGovYHYdBLRPrdGOLYBwuIrK9YmYNl55sH653KLO10svhn5XgCLkb
	 2n0V6hklTtzWoyDWWg574zwvGSXJoENhF8s0xLKxkUzO3sqBmPItOh+7fofBn5HWi6
	 TF5TXIYAQEnoA==
Received: by mail.fontri.pl for <linux-rockchip@lists.infradead.org>; Mon, 29 Dec 2025 14:04:50 GMT
Message-ID: <20251229150000-0.1.t6.6fz8h.0.r8of89uti7@fontri.pl>
Date: Mon, 29 Dec 2025 14:04:50 GMT
From: =?UTF-8?Q?"=C5=BBaneta_K=C4=99dzierska"?= <zaneta.kedzierska@fontri.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Odbi=C3=B3r_w_paczkomacie_?=
X-Mailer: mail.fontri.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251229_061645_069898_9313ADCF 
X-CRM114-Status: UNSURE (   1.39  )
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

RHppZcWEIGRvYnJ5LAoKamFrbyBsaWRlciB3IHVzxYJ1Z2FjaCBrdXJpZXJza2ljaCB3IFBvbHNj
ZSBwcnp5Z290b3dhbGnFm215IGVsYXN0eWN6bmUgcm96d2nEhXphbmllIGRsYSBwcnplZHNpxJli
aW9yY8Ozdy4KClN0d29yenlsacWbbXkgYWJvbmFtZW50IMWCxIVjesSFY3kgZG9zdGF3eSBkbyBQ
YWN6a29tYXQgMjQvNyBvcmF6IG9ic8WCdWfEmSBrdXJpZXJza8SFIC0gamVkZW4gZG9zdGF3Y2Es
IGplZG5hIGZha3R1cmEgaSBwcnpld2lkeXdhbG5lLCBzdGHFgmUga29zenR5LiAKCkN6eSBtb2fE
mSBwcnplZHN0YXdpxIcsIGNvIG1vxbxlbXkgemFwcm9wb25vd2HEhyB3emdsxJlkZW0gUGHFhHN0
d2EgcG90cnplYj8KCgpQb3pkcmF3aWFtCsW7YW5ldGEgS8SZZHppZXJza2EKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
