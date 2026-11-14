Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5964B606A333
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2026 03:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Rj2KtJht;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gahingwoo.com header.i=@gahingwoo.com header.a=rsa-sha256 header.s=fm1 header.b=chmphiGd;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=0hsfnHAH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=OE01RkSf3ZqtMelQzXtaoxeflgBjyybuSUgh1WSlbRg=; b=Rj2KtJhtyHnMtllWOGXbR/iJQH
	bTprQoTumpUEVkq9y78rnjmLJAMRGQMIwUizKVTtA5E29EN7Fdcps/wj9pP623UXFdDqTvg0eTkq4
	6e0jTpl0VkbeIhjU6sZglifT7wLy66U+o2/RprDk1t+df3iDkFk//wbNDirXM7ipT7QCwpVelGrjm
	fNEaEMb9FwHNaJLj/OsK2YTZn22OaRZO1tOd6ca+CJAqmPIuLxAX2EczA13md6TMSTnZI3ZjR/G5G
	9JSPqoesN38vx0nF+rYTLrHF0TF39rbFPI2PdJ0jRc6B26Hu3I4bTR/xy5dWtg8L+/qFpNprn20mG
	XBptEoBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS44o-0000000F9HT-1HBX;
	Sat, 14 Nov 2026 03:05:14 +0000
Received: from flow-a4-smtp.messagingengine.com ([103.168.172.139])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS44k-0000000F9GS-2fMm
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Nov 2026 03:05:12 +0000
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
	by mailflow.phl.internal (Postfix) with ESMTP id 5950D1381A17
	for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 22:05:09 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-01.internal (MEProxy); Fri, 13 Nov 2026 22:05:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm1; t=1794625509; x=1794632709; bh=ho+Xd5M3ML
	ddX0wCUHHcPTNzdHoU5y2P2QioqmPkh7Q=; b=chmphiGd2w/jmFcAHc3fc6rk+F
	bwxAvDx9TKZA7IT5uwQtXpttn7z7DVJBMS0dhvfNaMP3KQO3XuJtnoKRps3lk8cO
	LmttOWiTUTLl2tjLOGixxu3bUb1mY8lPaum6dV9tZLzIzv24jZKcLVQIVNFwRfA/
	a6jGs4VT6w9v3swt3DEgaydnFe5WklBqd7Yasm+8MMB1/ShtLOpX2NKh3PPkgg4t
	rNsu8W39rKCjrwW/m/69sNYqtJwV4a61nt3L+wLQhTJGhadxCPsXZTuipbameLie
	4AGlBn+dvCJ47fE72NeU2FXFhcYiXEIkDGEVbaZmYKA0C09oOLBs5xyjtPBw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1794625509; x=1794632709; bh=ho+Xd5M3MLddX0wCUHHcPTNzdHoU5y2P2Qi
	oqmPkh7Q=; b=0hsfnHAHcLXU1QlNCUZUerfsdF5P+76hk1rbWFigAbYH0EKhR6X
	Y/bFbjcLXrvKFlLlgqhB6/J1QLRTj1I8O7a2GuyhOLoRuwTx8PZYtzcEdhTnWS1d
	k67qxBJEeWrQLnPd58QDQfTqanfA38F7dqG0jrEYNrwLHZG2Uh7jpQhW9DYJ1ArP
	/037unhI2Grxsr66JWruWwEcH11kbvRdCVSC3zHBE16Ekc+Ps9EEQdw1wIyUHJfD
	Ig27fmKDSvDsh6YUjHzHlfwkvyNPyB8KzJrNLSeBbtMePcH7avGLRItyzrhWr9yR
	N/8wtxxWwQIIYCW8uni09+kFu7OIURzyT0Q==
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=sign d=gahingwoo.com a=rsa-sha256;
DKIM2-Signature: i=1; m=1; t=1794625509; d=gahingwoo.com;
	mf=PGdhaGluZ0BnYWhpbmd3b28uY29tPg==;
	rt=PGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmc+;
	s=fm1:rsa-sha256:KwZzZHnjngkeKZQWkkRJ5uYxoTkVxQZHQ3LDYaGywzTExKT
	nRpov95V1VkVoi/eALsklsqBL2AQZ8ZxF6er2+X9pAxcYMDCCT161nSnFUMPb/eP
	rude3hagMymgMer0UjtybZUchWjqLPGWg0iMpci2HMukPYabEZOSlaTDIA26Akbr
	dFVdY7KHj9slNle/azp4ptxFzH2byzY6vAM91vanRrsgYYbTTWhG44hgqVWL3ikg
	Cpxbt+BEdkwSkIXkFoFxWo0/puZbNCFp/uz4TpPdI9nDkjmDss/8yKyPoT5woVug
	od+dTLvn7A73n+510Q0ZH8lhthJhL9PG5hKIt9w==;
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=mi-m=1; hc=9;
	hn=cc,content-transfer-encoding,date,feedback-id,from,
	message-id,mime-version,subject,to;
Message-Instance: m=1; h=sha256:zMNj118Rl8rR+gwXIlnuBWnpyerlZLoztdEwTTKxavA=:zP8NGW8sziDBFTn5S18gCH5sO+fygkTvKfZ9mQamyRI=;
X-ME-Sender: <xms:5M_3avvqnYai2NEbloT90WOolawWpyHWQTDj58JwE9cboZjz00qDAg>
    <xme:5M_3amDucS_sQyOT57Pdr-qkCmL3U5QT766-WQf2fSEzOaOo3eyzLtitrQO8lmqlW
    2At9G99M212KVBWDZ9BGlNf9PxJn2RFJI4ndl-qJPc7_CJaXBlv_uU3>
X-ME-Received: <xmr:5M_3asVGfqQWo9zr3jAMIppuaTX0gKrNWrAa4ojY7WcmufUhWRe0wfo4Oai7_6Y5qUW9Yd73>
X-ME-Proxy-Cause: dmFkZTFwQh0ELJpE6112s8MyRWshLM3h/+unzmFMo3mwTz5nZkBeMQm0HKaSVwMr5DQl8i
    cnVbEPsE00HX2qkiRUfUrcn3ir9I7B2BH3l1asXz4XB5Ihe8Yi7+6HrFGUUbGaDao+m4Om
    Tota3AHf1W4XjVrWufU7/BBsqAvi6QvWP4UBYXR8PYArHIS3AC4VgAfu3vXuyMfQxlKUuu
    ItVtx8Fb+ewAAONKPHvpvNnEs1QRBpp4uESng/ED1OHfyWKT+dQTir24TDL64AGWxvfdqv
    woA8nt3G/MJPF0+bhvrZpDATkQXockdH2DB44KlDPvz4/0semGzD7o04zs2S5L5hfHC1t2
    5nBGNkvpDR1fqtlYRBdFMhHGHz1lattA5aQ3bdSnaapZF+PsxJjXj/EfUTYlEHpGALLzt/
    t2XOR1rRJRabAEyDA9EZ23HxMrW924dc9mDsaBGCmkRR3ONFVelAVaybSiw2/2HdtWQMgs
    0arDPtmXZJ+FPGUzlHVqGNaVjK+IIVRBQvQqfRzTOX7UrmTafFMFsbJGzoUwxoDxAhg3re
    RQ+tiZD+QFxdLCrB9iQRxm7cxZCN6yz6Cnprk7hfu7qn54+mGKWRTl3YVaoPOC3NLrOLQb
    piEYr+t5ekaInd9k4GYsIYzaAHEMyPnAM6/sNJULkMrZRdCG079nSytl7kZQ
X-ME-Proxy: <xmx:5M_3avFde3C6VhA1XP7NTz9qTjwqS7DxwNDfe4xkbsNMuJTHSYs1Sw>
    <xmx:5M_3anOhFckzaHS55yU0nrQn6Rbtl5VkRd-Uyd0qM2-Tj73vDs8cxw>
    <xmx:5M_3arVbrW4HEVG44FqTSnOWhaulIJfiH3wOQe8ACQO_QoSINhsYdg>
    <xmx:5M_3auznDzH6TLevsWLbHT7DR96qWybOm1FywEpGJcW7WiPm9l1PLA>
    <xmx:5c_3at3XiXCcCoS_mIvN9ggNR638ejcC9jscmMkPis_i9ZlnwUL5cLc4>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 13 Nov 2026 22:05:04 -0500 (EST)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: ulf.hansson@oss.qualcomm.com,
	ulfh@kernel.org,
	heiko@sntech.de
Cc: finley.xiao@rock-chips.com,
	shawn.lin@rock-chips.com,
	sebastian.reichel@collabora.com,
	vlwwwwww@gmail.com,
	leonard@lausen.nl,
	abel.vesa@oss.qualcomm.com,
	tomeu@tomeuvizoso.net,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v17 0/3] pmdomain: rockchip: RK3576 NPU domain supply and settle delay
Date: Sat, 14 Nov 2026 16:04:58 +1300
Message-ID: <cover.1794615323.git.gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_190510_939962_02A37B10 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This series fixes how the Rockchip power-domain driver initializes
domains that need a regulator, adds proper regulator handling for the
RK3576 NPU power domain, and adds a settle wait after power-on for some
RK3576 power domains.

These are the pmdomain patches of the RK3576 NPU series, split out and
rebased on Ulf's next, as Ulf asked after dropping v15 7, 9 and 10:
https://lore.kernel.org/all/CAPx+jO-KKvgRS0br-3QGh6Jt4efWJ+A6YoRZKFV_bcfB+8sm6w@mail.gmail.com/

The accel/rocket and DT patches follow as their own v17:
https://lore.kernel.org/all/cover.1794615324.git.gahing@gahingwoo.com/

Based on: Ulf's next (844a13010b0b)

Changes in v17:

- Reorganized the series as Ulf asked, and split the fix for regulator
  domain initialization from the RK3576 NPU regulator handling.
- Following Finley Xiao's (Rockchip) review of v16, the RK3576 delay is
  now 15 us on NPUTOP and VOP only.
- Fixed the subdomains of a regulator domain being left in the wrong
  state at probe, reported by Vladimir Bely (1/3).
- The RK3576 NPU power domain uses DOMAIN_RK3576_R, the same macro
  Leonard Lausen's GPU patch added (2/3).

Testing:

Tested on a Radxa ROCK 4D, with these patches and the rest of v17
backported to Armbian's 7.3 kernel:

- With the NPU disabled in the DT, NPUTOP, NPU0 and NPU1 are switched
  off and idled at probe on every boot (16 boots). Without 1/3, all 14
  boots left them on, and one of them hung.
- With the NPU enabled, 30 NPU power-ups after a warm reboot and 30
  after a cold power-on, with identical output and no SError.

Logs: https://github.com/gahingwoo/linux-rk3576-npu/tree/main/board-logs

Tag changes:

- 3/3 changes the delay values of the v16 patch and is organized
  differently, so I've dropped Abel's and Heiko's Reviewed-by. Abel,
  Heiko, could you take another look?

Jiaxing Hu (3):
  pmdomain: rockchip: switch off the subdomains of a regulator domain at
    probe
  pmdomain: rockchip: manage the RK3576 NPU domain supply
  pmdomain: rockchip: settle RK3576 NPUTOP and VOP after power-on

 drivers/pmdomain/rockchip/pm-domains.c | 115 ++++++++++++++++++++++++---------
 1 file changed, 85 insertions(+), 30 deletions(-)


base-commit: 844a13010b0b93f8561ef2c088f843647d5e552d
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
