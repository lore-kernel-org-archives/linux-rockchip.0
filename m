Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9EC6C10DCE
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 08:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HsSpVxxpxPpA23Y5K3EZw6S/FmVe1UAQl9W6xlmRx9A=; b=mTL4egBgIpvHbP
	WEOo2/e4b6JuaVev3ZVdHrszBpfjaeDSDb701si+sKHVD3X4ZmSeO6SuIDJW1xhyT2cL2Wg35GxVM
	P4TynMMWYrpotJmhYEwICnt8RYbXoLDp9fCHKMFUflRCTfVVblGXKrdPrDjbvMHstnL9Jcj+OFBXO
	n9Xh6otFg8869klBVyiKgEuZf4/IEB+WzTmXkbBskdS04OoTOAncmCSjDhAF6dMck7GVnbm6N5jPh
	cnNmeMOYNtanVNMeNRZBnb7SpjZVOmCINuE8lRCQh4S9oDXxlnSdjMGiIE05d9BlsTz2Bb2nb5uVR
	CirYheiC11VmzyGbJYaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rB9Mb-00C9nT-1f;
	Thu, 07 Dec 2023 08:04:05 +0000
Received: from m15.mail.163.com ([45.254.50.219])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rB9MY-00C9mT-2H
	for linux-rockchip@lists.infradead.org;
	Thu, 07 Dec 2023 08:04:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version:
	Content-Type; bh=JoDdbs1Wrd/5YB34shDi+Os3xSvT1skK3pYG7RWo9/8=;
	b=piEgUb0B0pJoPEnz/h//4n9PcqCUGXky7twxwiMouZIWRHdqNxC9ccnF56Vto+
	Oy15MkxM67x+1DvFHTdhVJFkbhEAkwJ9/Z1y7J3PYgwMXKgm7ubTBAeXFMUrEEcQ
	9UuSJi+LFrhQ9FGEXciAvpqUgzNHuyNoxzpIjxiOVAFfs=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g2-3 (Coremail) with SMTP id _____wDnb9JAfHFlkGmwEw--.43967S2;
	Thu, 07 Dec 2023 16:03:16 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	chris.obbard@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v4 17/17] MAINTAINERS: Add myself as a reviewer for rockchip drm
Date: Thu,  7 Dec 2023 16:03:02 +0800
Message-Id: <20231207080302.652839-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231207075906.651771-1-andyshrk@163.com>
References: <20231207075906.651771-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDnb9JAfHFlkGmwEw--.43967S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrKr1xtF17uw13Gr1fAF4rAFb_yoW3Krg_WF
	WIq34kXr48CFZ8J3yvk3Z7G3sIyayFyan3Zrn7tw4kAa48XrWDtrZYkr1Ikrn8J3W8KrWq
	vay3Ga43Cr43ujkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUnjQ6PUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBnBs-Xlghl3ZRWwABs1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_000403_098499_5F434393 
X-CRM114-Status: UNSURE (   7.86  )
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

RnJvbTogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgoKQXMgSSBhbSBmYW1pbGlh
ciB3aXRoIGFsbCB0aGUgZGV0YWlscyBvZiB2b3AyIGRpc3BsYXkKYXJjaGl0ZWN0dXJlLCBJIGNh
biBoZWxwIHJldmlldyBhbmQgdGVzdCBhbGwgcmVsYXRlZApjaGFuZ2VzIGluIHRoaXMgc3Vic3lz
dGVtLCBzbyBhZGQgbXkgZW1haWwgaGVyZSB0byBtYWtlCnN1cmUgSSBnZXQgQ0MnZCBvbiByb2Nr
Y2hpcCBkcm0gY2hhbmdlcy4KClNpZ25lZC1vZmYtYnk6IEFuZHkgWWFuIDxhbmR5LnlhbkByb2Nr
LWNoaXBzLmNvbT4KLS0tCgoobm8gY2hhbmdlcyBzaW5jZSB2MSkKCiBNQUlOVEFJTkVSUyB8IDEg
KwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvTUFJTlRBSU5F
UlMgYi9NQUlOVEFJTkVSUwppbmRleCA3ODhiZTlhYjViNzMuLmU1MGM0N2MxZDQxMSAxMDA2NDQK
LS0tIGEvTUFJTlRBSU5FUlMKKysrIGIvTUFJTlRBSU5FUlMKQEAgLTcxNTgsNiArNzE1OCw3IEBA
IEY6CWluY2x1ZGUvbGludXgvcGxhdGZvcm1fZGF0YS9zaG1vYl9kcm0uaAogRFJNIERSSVZFUlMg
Rk9SIFJPQ0tDSElQCiBNOglTYW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMuY29tPgogTToJSGVp
a28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4KK006CUFuZHkgWWFuIDxhbmR5LnlhbkByb2Nr
LWNoaXBzLmNvbT4KIEw6CWRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKIFM6CU1haW50
YWluZWQKIFQ6CWdpdCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0vZHJtLW1pc2MK
LS0gCjIuMzQuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
