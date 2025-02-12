Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18CF1C021A5
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Feb 2025 17:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yTq0jYcE4/IB+DZkRsROAM/Llp7BMeHypNpEJ3bCa/E=; b=EbzPmMUt149kb6
	Q7nQPAYlpQMUMsaLxpe4q9IHZUnA/9GMnd/M9KLjBEfmXayKrb6joU4VRUc8jtopWrlk/npEpOgVH
	pXATGioXxfTPmxG/sVprfCdFnE0YvGWsR/xJxyWXBGSVoPYnjqnrRkseuLoIfCRcyf/xMIL6tVezR
	7zqd1mjvrylvwwnlBX2IKNcY3foPLrapl9xbHGWlOw6+uVV8U38lhZYVlg0sOpeRhV3DAHzkBQ+FL
	GH0ik5MxP20P4uxoJKg9mOYq6fBAdHAPl+yqY6c95IwgPmLtrgbfNc/ByRpwakpCjiuJ4i2XU6SXX
	kCiLTjzqG0JvFh/74Ddw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiGGf-00000008FIm-1JNm;
	Wed, 12 Feb 2025 17:11:21 +0000
Received: from fhigh-a8-smtp.messagingengine.com ([103.168.172.159])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiFxa-00000008B33-0qRQ
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Feb 2025 16:51:40 +0000
Received: from phl-compute-06.internal (phl-compute-06.phl.internal [10.202.2.46])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 381C21140101;
	Wed, 12 Feb 2025 11:51:34 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-06.internal (MEProxy); Wed, 12 Feb 2025 11:51:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ragnatech.se; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:message-id:mime-version:reply-to
	:subject:subject:to:to; s=fm2; t=1739379094; x=1739465494; bh=3y
	Etyh9YY1GMG9XsGl7GthC62viQRU4CHHyQFihHuZQ=; b=bMTeqcuGb6P5tQBQo4
	gdyQ0dAzDnxnEVl7qzg1Nxr6x/gvc41oMo1NhhE0AmGEGiEOPydox5nyqpnIdL5g
	d7m3qKRxoASJMkIGWcQM15irk/bT9Ub71MIxcRCW9mslslLpJTzLv1YPwFCDHDaE
	AiS1R5DjG3tPFkvZOE22Cww43XtKkuT2zhK2Kvk1oUKU12RHF5rK6NXRZ+e/HNen
	CjOQeG2eOv0jaHXT2uTsu29M62lOQ6vf4DD9UrPSvzeHf8grMLTqrSeh6s5s4Ds+
	W1dtzos/0PFbkusoEBQWbl4Om/AqQs/WFnHcqsHqB4agPngFkpVxdeNlmwgF/eWn
	X82Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1739379094; x=1739465494; bh=3yEtyh9YY1GMG9XsGl7GthC62viQ
	RU4CHHyQFihHuZQ=; b=kn8+r0i5XWttRVtl0/8QigtLWZYH18RprF3jeWLC/VO0
	JWUKKNtFaGq0NJtDh4SZ69wVFx0L11AcHPOHAJFT6TlJ5SFA/l6hMgAzpEHT5pyP
	K8+/TVCOBSRERTKlEVfm0+OxTLjXmLIdZj0ueLK1kYFl10U944v741FzjmQ1HTK/
	EI7FNPClI5f7Zn5lRZbOIn80/yELdHcPw2TxfCfC7p8pq7WxTzHFxrg3kAwHI2VI
	KKxcYw9u1ddia52tRSdIECBb2Gbp+s3PDWb8IEcBS6d0SozoXum8OwkTdeZ4XkVy
	R/F/3zD8JInAmmI6ZEls/bfitCxMV763bz8sj8lBlA==
X-ME-Sender: <xms:ldGsZ6iMaQafwHTwn1SDiicvoOGd8m3VED1BS_Kui4UM3XitO6J7YA>
    <xme:ldGsZ7DvJTIl-70CnBTzWgs9ByWbdf6rzsE-7iVnXt9zM5EZUBzYCb89rmo3yvJss
    45zdAVspHbNudJ0KrY>
X-ME-Received: <xmr:ldGsZyGGH_1FllqDyBDy-gfXMcP0V3pLDpF4qLLwY4enJnYefdCl0iP_cYmwzBiNX9bl9esqlSMXTxz7PY4O8YvAWg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdeggeegudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
    hnthhsucdlqddutddtmdenucfjughrpefhvfevufffkffogggtgfesthekredtredtjeen
    ucfhrhhomheppfhikhhlrghsucfunpguvghrlhhunhguuceonhhikhhlrghsrdhsohguvg
    hrlhhunhguodhrvghnvghsrghssehrrghgnhgrthgvtghhrdhsvgeqnecuggftrfgrthht
    vghrnhepheduleetteekgffffedufeeuvdejiedvkefhveeifeegffehledtvdevhfefte
    egnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepnhhi
    khhlrghsrdhsohguvghrlhhunhgusehrrghgnhgrthgvtghhrdhsvgdpnhgspghrtghpth
    htohepkedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepuggrfhhnrgesfhgrshht
    mhgrihhlrdgtohhmpdhrtghpthhtoheplhgruhhrvghnthdrphhinhgthhgrrhhtsehiug
    gvrghsohhnsghorghrugdrtghomhdprhgtphhtthhopehprghulhdrvghluggvrhesihgu
    vggrshhonhgsohgrrhgurdgtohhmpdhrtghpthhtohepshgrkhgrrhhirdgrihhluhhsse
    hlihhnuhigrdhinhhtvghlrdgtohhmpdhrtghpthhtohepjhgrtghophhordhmohhnughi
    sehiuggvrghsohhnsghorghrugdrtghomhdprhgtphhtthhopehlihhnuhigqdhmvgguih
    grsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqrhhotghk
    tghhihhpsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgpdhrtghpthhtohepnhhikh
    hlrghsrdhsohguvghrlhhunhguodhrvghnvghsrghssehrrghgnhgrthgvtghhrdhsvg
X-ME-Proxy: <xmx:ldGsZzQuPaLGWFeYuGy68OCz-lpUONEZLSZSyYEswWv3cNhtUVLuMw>
    <xmx:ldGsZ3wow_fRuYOFqBjcXyjdhSZMcajc7TAZ76n-LtyYe3SnWlnvGg>
    <xmx:ldGsZx5Bri9W4QRGsw7Ocor7scmgu-n5LuVD-wQunmW-GQMIlZ6BDg>
    <xmx:ldGsZ0w_-FnEYptSyO4tU5quSy5o7WX_8czyQBR1JDDKEcd7W3ht3w>
    <xmx:ltGsZ-k4sOKKWJL7ohUH68d4Y6YISFB21UOTEpXtdxsGggDU1TSZPxr1>
Feedback-ID: i80c9496c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 12 Feb 2025 11:51:33 -0500 (EST)
From: =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Dafna Hirschfeld <dafna@fastmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Subject: [PATCH] media: uapi: rkisp1-config: Fix typo in extensible params example
Date: Wed, 12 Feb 2025 17:50:53 +0100
Message-ID: <20250212165053.3378513-1-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_085138_862439_983E7F5F 
X-CRM114-Status: GOOD (  10.40  )
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

VGhlIGRlZmluZSB1c2VkIGZvciB0aGUgdmVyc2lvbiBpbiB0aGUgZXhhbXBsZSBkaWFncmFtIGRv
IG5vdCBtYXRjaCB3aGF0CmlzIGRlZmluZWQgaW4gZW51bSBya3NpcDFfZXh0X3BhcmFtX2J1ZmZl
cl92ZXJzaW9uLCBub3IgdGhlIGRlc2NyaXB0aW9uCmFib3ZlIGl0LiBDb3JyZWN0IHRoZSB0eXBv
IHRvIG1ha2UgaXQgY2xlYXIgd2hpY2ggZGVmaW5lIHRvIHVzZS4KCkZpeGVzOiBlOWQwNWU5ZDVk
YjEgKCJtZWRpYTogdWFwaTogcmtpc3AxLWNvbmZpZzogQWRkIGV4dGVuc2libGUgcGFyYW1zIGZv
cm1hdCIpClNpZ25lZC1vZmYtYnk6IE5pa2xhcyBTw7ZkZXJsdW5kIDxuaWtsYXMuc29kZXJsdW5k
K3JlbmVzYXNAcmFnbmF0ZWNoLnNlPgotLS0KIGluY2x1ZGUvdWFwaS9saW51eC9ya2lzcDEtY29u
ZmlnLmggfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvbGludXgvcmtpc3AxLWNvbmZpZy5oIGIvaW5j
bHVkZS91YXBpL2xpbnV4L3JraXNwMS1jb25maWcuaAppbmRleCA0MzBkYWNlYWZhYzcuLjJkOTk1
ZjNjMWNhMyAxMDA2NDQKLS0tIGEvaW5jbHVkZS91YXBpL2xpbnV4L3JraXNwMS1jb25maWcuaAor
KysgYi9pbmNsdWRlL3VhcGkvbGludXgvcmtpc3AxLWNvbmZpZy5oCkBAIC0xNTI4LDcgKzE1Mjgs
NyBAQCBlbnVtIHJrc2lwMV9leHRfcGFyYW1fYnVmZmVyX3ZlcnNpb24gewogICogVGhlIGV4cGVj
dGVkIG1lbW9yeSBsYXlvdXQgb2YgdGhlIHBhcmFtZXRlcnMgYnVmZmVyIGlzOjoKICAqCiAgKgkr
LS0tLS0tLS0tLS0tLS0tLS0tLS0gc3RydWN0IHJraXNwMV9leHRfcGFyYW1zX2NmZyAtLS0tLS0t
LS0tLS0tLS0tLS0tKwotICoJfCB2ZXJzaW9uID0gUktJU1BfRVhUX1BBUkFNU19CVUZGRVJfVjE7
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKKyAqCXwgdmVyc2lvbiA9IFJLSVNQMV9F
WFRfUEFSQU1fQlVGRkVSX1YxOyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8CiAgKgl8
IGRhdGFfc2l6ZSA9IHNpemVvZihzdHJ1Y3Qgcmtpc3AxX2V4dF9wYXJhbXNfYmxzX2NvbmZpZykg
ICAgICAgICAgICAgfAogICoJfCAgICAgICAgICAgKyBzaXplb2Yoc3RydWN0IHJraXNwMV9leHRf
cGFyYW1zX2RwY2NfY29uZmlnKTsgICAgICAgICAgIHwKICAqCXwgKy0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0gZGF0YSAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tKyB8Ci0tIAoy
LjQ4LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
