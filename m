Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49BD5CD3423
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 May 2026 19:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pKIRqMSmhR5imQ4zcaR+7fOb7AKcGBOC1W1FegyUFlg=; b=GI9zu0PdPgvoBq
	+T0fpOeginjprRL34fisikJBpoycIu5F58aGXo+qA+7SVHAXU5rGCsoSddYp8TnzT5EhPCTsEsH7z
	+g2SvXU73JH5zJ5giBjRem57RH45XiYkDKnnirCRGh10RkE+z5yNnXSKBAq2g5+j2yUY+DDAvJA6J
	YxqUdFeszsERPP40DxvVZwO1cgLDzCqCIqE7eDt2oKQ43H8KJmYdDuYDNgPCHVgwSMkQi1VQ3wC/E
	0q/jJT6gs8a7cQ04t10380R9gROuSX7WMVaHMrdLXXEUKfAKaDdfrL3dQ3l+M+nDD4oGMXuc1HjH7
	IlP1hQQoIIBjRrzaNj4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wItAA-00000007bb5-0Xtd;
	Fri, 01 May 2026 19:04:34 +0000
Received: from fout-b8-smtp.messagingengine.com ([202.12.124.151])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wItA6-00000007bal-3wWu
	for linux-rockchip@lists.infradead.org;
	Fri, 01 May 2026 19:04:32 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfout.stl.internal (Postfix) with ESMTP id 240E41D00075;
	Fri,  1 May 2026 15:04:27 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-04.internal (MEProxy); Fri, 01 May 2026 15:04:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ragnatech.se; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:message-id:mime-version:reply-to
	:subject:subject:to:to; s=fm2; t=1777662266; x=1777748666; bh=u9
	UHrAX10czYl8z6ERCU50q7oPuGCE/KD8zyFgWZtrw=; b=I/1i7mLddxlR6tGMGK
	c6bO+BQ0h1y5aLEvnYxBdBOier3dDfWBT0kg7K6DMCRFZoTQZVRmgiQ7U4/xdYEy
	uDW0qiBs0AHM4yjzjn4hDYEYZ43AtPw9lxkcFxGisWWX4jHcLXA3nibN0/uMNEwV
	l/wMF9RdMFACNJczcfQ11gsCRm4uHilxbRqNQ34FNPTrtroLDbo8rEkKcUZvNSGs
	G1gcNHL3y8DHrIjlMvtw++af3IzgFqUfoBDDfUwcEnCkERuf96d7i+fTqfag/XkC
	kpjmZ9+ZzR/8EUxtMQTeo1MYgJW2lweHh/u+gX6LNnB2aWnn/IhzzJorYpcOdlk2
	8WOA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1777662266; x=1777748666; bh=u9UHrAX10czYl8z6ERCU50q7oPuG
	CE/KD8zyFgWZtrw=; b=lM3Z4Zr4bEBfaT92zVbrM0WrKWlpl4C6YgtBb+427fK1
	TDsU2BcyLmY6pv3wD/fsPdKuHBUkog5YGQ9ZZlj0RAcJRB+I/w1sUyzQltQw3lIf
	1NkU4OyK5I+X/YukyyjecYu/EOC2UNrxwX0MIZACszGdIyN3Lk4MuTWQofyOG/B4
	3or3O0c7HZOGrwryal+aBdgRoc1rp1/mDTrs7clJkGjttEetgwlJgpBDpgJKW7B8
	hq9B9I5zYejNR6s+PlYpQpW5bbKxS32pK+50/UFlHEsmnCyQ5h5DiwkkC7A3rm7P
	BHBA87dVht4QACS0NcI5v80RQ5P3wgGjI4x2X/D8ng==
X-ME-Sender: <xms:Ovn0aajZCqDC3spoUDIbbnA0tdb8TDL9RVsdsXX0-LqlqdQoxTF8PA>
    <xme:Ovn0aXCawxsnb27sJ4pXZFyMQgFDbkHUITIl8SzJ4dJVKslWdOqEi9ruqWDe8eIB5
    Xdyf-pZyCJHOX37NVxIrrE_zLpM9agyYQOloAEFj_jg-CxhC8uNBBc>
X-ME-Received: <xmr:Ovn0aUSyDJGepFE1wkdG9FPC4EBr1AYjkkpTS1wRBxXzXkTKOIMqSGVI-B-dT7jGjsZ1w10Z8yHWYpPwLpxspKsEYN2oKHFzWDgZ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdeltdellecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefhvfevufffkffogggtgfesthekredtredtjeenucfhrhhomheppfhikhhlrghsucfu
    npguvghrlhhunhguuceonhhikhhlrghsrdhsohguvghrlhhunhguodhrvghnvghsrghsse
    hrrghgnhgrthgvtghhrdhsvgeqnecuggftrfgrthhtvghrnhepheduleetteekgffffedu
    feeuvdejiedvkefhveeifeegffehledtvdevhfefteegnecuvehluhhsthgvrhfuihiivg
    eptdenucfrrghrrghmpehmrghilhhfrhhomhepnhhikhhlrghsrdhsohguvghrlhhunhgu
    sehrrghgnhgrthgvtghhrdhsvgdpnhgspghrtghpthhtohepkedpmhhouggvpehsmhhtph
    houhhtpdhrtghpthhtohepuggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmpdhrtghpthht
    oheplhgruhhrvghnthdrphhinhgthhgrrhhtsehiuggvrghsohhnsghorghrugdrtghomh
    dprhgtphhtthhopehprghulhdrvghluggvrhesihguvggrshhonhgsohgrrhgurdgtohhm
    pdhrtghpthhtohepshgrkhgrrhhirdgrihhluhhssehlihhnuhigrdhinhhtvghlrdgtoh
    hmpdhrtghpthhtohepjhgrtghophhordhmohhnughisehiuggvrghsohhnsghorghrugdr
    tghomhdprhgtphhtthhopehlihhnuhigqdhmvgguihgrsehvghgvrhdrkhgvrhhnvghlrd
    horhhgpdhrtghpthhtoheplhhinhhugidqrhhotghktghhihhpsehlihhsthhsrdhinhhf
    rhgruggvrggurdhorhhgpdhrtghpthhtohepnhhikhhlrghsrdhsohguvghrlhhunhguod
    hrvghnvghsrghssehrrghgnhgrthgvtghhrdhsvg
X-ME-Proxy: <xmx:Ovn0aUXf9Kt6FyfHZCX4_8wV_c3Aq8TVuZ6Hgm-pbdsF_uTyWqdkbw>
    <xmx:Ovn0aVfjlGhjCjOBeQb18WBhqu8_LY5JwoKLI4WicdGsDfWaIQo7iA>
    <xmx:Ovn0aYKrZV-fhsYwdPUKpe9IH4MBuNkJFEz-8OcFBbkyeii_ExMe8w>
    <xmx:Ovn0aSwCuU-r2wrkpObfsLq1fXEwHi909WQT7lNZ8yQsUcyOVH8y9A>
    <xmx:Ovn0ad6yUKpq7iVp-E2ntXO86qiL_Hz7n1im_RIaqLp0HLXsah3WS3Xe>
Feedback-ID: i80c9496c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 1 May 2026 15:04:25 -0400 (EDT)
From: =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Dafna Hirschfeld <dafna@fastmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Subject: [PATCH] media: uapi: rkisp: Correct name version enum
Date: Fri,  1 May 2026 21:03:39 +0200
Message-ID: <20260501190339.3449193-1-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260501_120431_694727_464EA665 
X-CRM114-Status: UNSURE (   8.94  )
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

VGhlIG5hbWUgb2YgdGhlIGVudW0gdG8gaG9sZCB0aGUgbWFwcGluZyBvZiBwYXJhbWV0ZXIgYnVm
ZmVyIHZlcnNpb25zCmhhdmUgYSB0eXBvIGluIHRoZSBuYW1lLCBjb3JyZWN0IGl0LiBXaGlsZSB0
aGlzIGlzIGEgdUFQSSBoZWFkZXIgdGhlCmltcGFjdCBzaG91bGQgYmUgbWluaW1hbCBhcyB0aGUg
ZW51bSBpcyBvbmx5IHVzZWQgYXMgYSBjb2xsZWN0aW9uIGZvcgp0aGUgb25lIHZlcnNpb24gbnVt
YmVyIHN1cHBvcnRlZC4KCkZpeGVzOiBlOWQwNWU5ZDVkYjEgKCJtZWRpYTogdWFwaTogcmtpc3Ax
LWNvbmZpZzogQWRkIGV4dGVuc2libGUgcGFyYW1zIGZvcm1hdCIpClNpZ25lZC1vZmYtYnk6IE5p
a2xhcyBTw7ZkZXJsdW5kIDxuaWtsYXMuc29kZXJsdW5kK3JlbmVzYXNAcmFnbmF0ZWNoLnNlPgot
LS0KIGluY2x1ZGUvdWFwaS9saW51eC9ya2lzcDEtY29uZmlnLmggfCA2ICsrKy0tLQogMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9p
bmNsdWRlL3VhcGkvbGludXgvcmtpc3AxLWNvbmZpZy5oIGIvaW5jbHVkZS91YXBpL2xpbnV4L3Jr
aXNwMS1jb25maWcuaAppbmRleCBiMmQyYTcxZjdiYWYuLjc2MzhiMjIyMDYwMCAxMDA2NDQKLS0t
IGEvaW5jbHVkZS91YXBpL2xpbnV4L3JraXNwMS1jb25maWcuaAorKysgYi9pbmNsdWRlL3VhcGkv
bGludXgvcmtpc3AxLWNvbmZpZy5oCkBAIC0xNTM1LDExICsxNTM1LDExIEBAIHN0cnVjdCBya2lz
cDFfZXh0X3BhcmFtc193ZHJfY29uZmlnIHsKIAlzaXplb2Yoc3RydWN0IHJraXNwMV9leHRfcGFy
YW1zX3dkcl9jb25maWcpKQogCiAvKioKLSAqIGVudW0gcmtzaXAxX2V4dF9wYXJhbV9idWZmZXJf
dmVyc2lvbiAtIFJrSVNQMSBleHRlbnNpYmxlIHBhcmFtZXRlcnMgdmVyc2lvbgorICogZW51bSBy
a2lzcDFfZXh0X3BhcmFtX2J1ZmZlcl92ZXJzaW9uIC0gUmtJU1AxIGV4dGVuc2libGUgcGFyYW1l
dGVycyB2ZXJzaW9uCiAgKgogICogQFJLSVNQMV9FWFRfUEFSQU1fQlVGRkVSX1YxOiBGaXJzdCB2
ZXJzaW9uIG9mIFJrSVNQMSBleHRlbnNpYmxlIHBhcmFtZXRlcnMKICAqLwotZW51bSBya3NpcDFf
ZXh0X3BhcmFtX2J1ZmZlcl92ZXJzaW9uIHsKK2VudW0gcmtpc3AxX2V4dF9wYXJhbV9idWZmZXJf
dmVyc2lvbiB7CiAJUktJU1AxX0VYVF9QQVJBTV9CVUZGRVJfVjEgPSBWNEwyX0lTUF9QQVJBTVNf
VkVSU0lPTl9WMSwKIH07CiAKQEAgLTE2MDEsNyArMTYwMSw3IEBAIGVudW0gcmtzaXAxX2V4dF9w
YXJhbV9idWZmZXJfdmVyc2lvbiB7CiAgKgkrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKwogICoKICAqIEB2ZXJzaW9u
OiBUaGUgUmtJU1AxIGV4dGVuc2libGUgcGFyYW1ldGVycyBidWZmZXIgdmVyc2lvbiwgc2VlCi0g
KgkgICAgIDpjOnR5cGU6YHJrc2lwMV9leHRfcGFyYW1fYnVmZmVyX3ZlcnNpb25gCisgKgkgICAg
IDpjOnR5cGU6YHJraXNwMV9leHRfcGFyYW1fYnVmZmVyX3ZlcnNpb25gCiAgKiBAZGF0YV9zaXpl
OiBUaGUgUmtJU1AxIGNvbmZpZ3VyYXRpb24gZGF0YSBlZmZlY3RpdmUgc2l6ZSwgZXhjbHVkaW5n
IHRoaXMKICAqCSAgICAgICBoZWFkZXIKICAqIEBkYXRhOiBUaGUgUmtJU1AxIGV4dGVuc2libGUg
Y29uZmlndXJhdGlvbiBkYXRhIGJsb2NrcwotLSAKMi41NC4wCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
