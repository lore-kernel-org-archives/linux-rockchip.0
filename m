Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14750C79F89
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2026 14:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nCt5pBQg6FHFiYdflkNL6Vww2kEYQzmz//xpPKU7yEY=; b=YcuwKM+LI9B8Lz
	WqRzPZIFBiHMMVjuYKDUkK3FnKtDBEqe1gCwJ1iCASuh9DTCyIH4HSv3IhNY0BLzJXPIcWaSo80KZ
	Ohnjhq1FjgTSNHGDaphMjz73AkX7ZOn2DZyhldDVp6l2GmuaHYml7zezU5oSQC0vczUfyPyEdzbH6
	KvMz1gZLiWFFaDBjOxBJaZVX3A+nzksth9RJtIMbYGNrYe37m8Mc7ynH6hGe16ZloRinQ7mZki/q8
	XDBYNkIa59H8Z7z+BYRxch18Q06Lk1thskokWKMS/FS6IjnPH15Fy7ycQcWMHuIPc0IKMMpr7zDtc
	mDQyKG1cp+ZutZKN912w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3a7D-000000071ER-3O1M;
	Mon, 07 Sep 2026 14:14:31 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3a6z-0000000715G-1kpU;
	Mon, 07 Sep 2026 14:14:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 61E7260D87;
	Mon,  7 Sep 2026 14:14:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0AF2AC2BCC7;
	Mon,  7 Sep 2026 14:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788790456;
	bh=8Gwxp5aoWJUfNbbLdYN5LWeAcCfH1LcXcRH62cWgIps=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=jubPEiGNjDDwgik7Tz0Ccvj2+ItCjZZflXnctzuyJsu3YrJTg8LwjGbiVqaHEmsAS
	 zmu2zIvlrtJS99qPnYP1fx43eRLxi09BEQNuh6r2PDnoHg08HxxAX52BI58FkYr0WJ
	 oz+PZ00T2XDi41GRTGCD0l/0YNib+snzJ9ukxS2/AfJ0BAtxBGjVCnBOL7Z7yOmW8N
	 XHTfb/o68Wp3ZLsSD0e7b2jiOUS66u5XNvSCoViSJ36kuQNZFa+fuX+rwBq5s+N2K9
	 4F6VrVPUKD3FKKuYxigN3IGU6K47ZLUg/LyOvcf6cpS8eqOkrWJIVmi39TkpRJ218m
	 j5N9UWUzcr9kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D93E5C79F9E;
	Mon,  7 Sep 2026 14:14:15 +0000 (UTC)
From: =?utf-8?q?=E5=AE=89=E5=AE=B9_via_B4_Relay?= <devnull+HystericalDragons.proton.me@kernel.org>
Date: Mon, 07 Sep 2026 22:13:55 +0800
Subject: [PATCH v2 1/3] dt-bindings: arm: rockchip: Add FriendlyElec NanoPi
 R28S
MIME-Version: 1.0
Message-Id: <20260907-r28s-upstream-v2-1-21ab570fc91c@proton.me>
References: <20260907-r28s-upstream-v2-0-21ab570fc91c@proton.me>
In-Reply-To: <20260907-r28s-upstream-v2-0-21ab570fc91c@proton.me>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Chukun Pan <amadeus@jmu.edu.cn>, jensen <jensenhuang@friendlyarm.com>, 
 =?utf-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=920;
 i=HystericalDragons@proton.me; h=from:subject:message-id;
 bh=LDAlcJQezbRbao3W92BQlWiQhp4bd/SQs/nEjmwyH1U=;
 b=kA0DAAoWFccN7oSCbgcByyZiAGqexraiZ5L7ToCkfpy8sawe5RyogUK47lmrosMUIKy1kgRej
 oh1BAAWCgAdFiEEHbJ7WRKqW5lyBBrHFccN7oSCbgcFAmqexrYACgkQFccN7oSCbgfRLAD/Q2T9
 KMFxgUqquC0UmhkV5yeXcW1ukQADSOjNBK+CCTEA/0EWfKl2yhK4z1JbJMWilZTOEPRJht2guaJ
 XNL4U0dwM
X-Developer-Key: i=HystericalDragons@proton.me; a=openpgp;
 fpr=1DB27B5912AA5B9972041AC715C70DEE84826E07
X-Endpoint-Received: by B4 Relay for HystericalDragons@proton.me/default
 with auth_id=1004
X-Original-From: =?utf-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>
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
Reply-To: HystericalDragons@proton.me
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RnJvbTog5a6J5a65IDxIeXN0ZXJpY2FsRHJhZ29uc0Bwcm90b24ubWU+CgpUaGUgTmFub1BpIFIy
OFMgaXMgYSBkdWFsIGdpZ2FiaXQgRXRoZXJuZXQgcm91dGVyIGJvYXJkIGJhc2VkIG9uIHRoZQpS
b2NrY2hpcCBSSzM1MjggU29DLgoKU2lnbmVkLW9mZi1ieTog5a6J5a65IDxIeXN0ZXJpY2FsRHJh
Z29uc0Bwcm90b24ubWU+Ci0tLQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Fy
bS9yb2NrY2hpcC55YW1sIHwgNSArKysrKwogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygr
KQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9j
a2NoaXAueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2No
aXAueWFtbAppbmRleCA4MTc0NGZiZWU5Li43MDllMmNjNDRkIDEwMDY0NAotLS0gYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCkBAIC0zNDcsNiAr
MzQ3LDExIEBAIHByb3BlcnRpZXM6CiAgICAgICAgICAgICAgIC0gZnJpZW5kbHlhcm0sbmFub3Bp
LXIycy1wbHVzCiAgICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszMzI4CiAKKyAgICAgIC0g
ZGVzY3JpcHRpb246IEZyaWVuZGx5RWxlYyBOYW5vUGkgUjI4UworICAgICAgICBpdGVtczoKKyAg
ICAgICAgICAtIGNvbnN0OiBmcmllbmRseWFybSxuYW5vcGktcjI4cworICAgICAgICAgIC0gY29u
c3Q6IHJvY2tjaGlwLHJrMzUyOAorCiAgICAgICAtIGRlc2NyaXB0aW9uOiBGcmllbmRseUVsZWMg
TmFub1BpIFIzUwogICAgICAgICBpdGVtczoKICAgICAgICAgICAtIGNvbnN0OiBmcmllbmRseWFy
bSxuYW5vcGktcjNzCgotLSAKMi41NS4wCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
