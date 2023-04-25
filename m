Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51BACC6FD18
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Apr 2023 07:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y+PCb3mWIlo2vJr2EPv34n3/Na6OUpBmYfnJG5tuG4U=; b=IAvFY9GquplQ6T
	cgNJJcRDMIX/mCkH+gZidMt/s8Z/i2arfwrczmfiN5iBCLNC3vHy70KMrwn87SK5jjvJxtSNkta1b
	JOi23tm08/x7Qs7WfT91NtMR/ZKygHqAcub9LrQvGH6cBD3/lH5x77Wky7S27NcKwngerK3mCzcoO
	shYo8e+ZJ8fib8Epjq45gA4Ei3tYzfWaVXlXen4IhVFP186xazFTSOkfkab0Cmp1UeC/+JQXtW3L3
	r8UlVpyKj7xxRKRf8ZxtaySBGUW7MWTTkg4+Qz3DxosE9O20ULVmp3I3ie7fbqMrBr+GDju3Y19q3
	efuqDVUyrGBRCvY6K13Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prDJl-000PFq-0A;
	Tue, 25 Apr 2023 07:42:29 +0000
Received: from mail.camacfoy.pl ([195.231.80.120])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prDJi-000PFI-35
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Apr 2023 07:42:28 +0000
Received: by mail.camacfoy.pl (Postfix, from userid 1001)
	id E8CD2A4154; Tue, 25 Apr 2023 08:36:20 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=camacfoy.pl; s=mail;
	t=1682408209; bh=0DnDcjJl846YrSvLcp0W7cMkWp4Lfhp/OZAq4oBoaY8=;
	h=Date:From:To:Subject:From;
	b=bef50J6Oa99NKDB6GvQJVAumrK5c5CvA0wyz55h8LWXxLqmDV64/6T9rkZMwd/sPi
	 hVxWCR2AiGegwXm0Jj3s5hoqLmEJ7U/yoJ9w6B5QDmZnsoiLW+xatv9xQyF7SsIxes
	 3ldQpyVp9rT19fg1cE0UTC4XFcOTEk+7RP8Ub8AFk9iw+75Gllq4tfKmfpCcvRAPam
	 WEhUFxb7seQPLJ6YX9IZAbeco6/Y4rsWXAcPTGAxwIupAtbdvDZolhpAf+dI7PcIKJ
	 c9Avmd/Nl0h5VipFC5fhpd2dX43OLcGGLKG5/s05R4LkL3TBlBS43q9yUef5E+4JPM
	 zi8WOc9RNfrwA==
Received: by mail.camacfoy.pl for <linux-rockchip@lists.infradead.org>; Tue, 25 Apr 2023 07:36:05 GMT
Message-ID: <20230425074502-0.1.83.bzjc.0.q0p5k5n1op@camacfoy.pl>
Date: Tue, 25 Apr 2023 07:36:05 GMT
From: "Krzysztof Maj" <krzysztof.maj@camacfoy.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: biznesowy angielski 
X-Mailer: mail.camacfoy.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230425_004227_183033_B0E9AB7F 
X-CRM114-Status: UNSURE (   1.58  )
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

RHppZcWEIGRvYnJ5LCAKCmN6eSByb3p3YcW8YWxpIFBhxYRzdHdvIHJvenfDs2oga3dhbGlmaWth
Y2ppIGrEmXp5a293eWNoIHN3b2ljaCBwcmFjb3duaWvDs3c/CgpPcHJhY293YWxpxZtteSBrdXJz
eSBqxJl6eWtvd2UgZGxhIHLDs8W8bnljaCBicmFuxbwsIHcga3TDs3J5Y2gga29uY2VudHJ1amVt
eSBzacSZIG5hIHBvZG5pZXNpZW5pdSBwb3ppb211IHPFgm93bmljdHdhIGkgamFrb8WbY2kga29t
dW5pa2Fjamkgd3lrb3J6eXN0dWrEhWMgYXV0b3Jza8SFIG1ldG9kxJksIHN0d29yem9uxIUgc3Bl
Y2phbG5pZSBkbGEgd3ltYWdhasSFY2VnbyBiaXpuZXN1LiAKCk5pZXN0YW5kYXJkb3d5IGt1cnMg
b24tbGluZSwgZG9wYXNvd2FueSBkbyBwcm9maWx1IGZpcm15IGkgb2JzemFyw7N3IMWbd2lhZGN6
b255Y2ggdXPFgnVnLCB3IHN6eWJraW0gY3phc2llIHByenluaWVzaWUgZWZla3R5LCBrdMOzcmUg
endpxJlrc3rEhSBrb21mb3J0IGkgamFrb8WbxIcgcHJhY3ksIHJvendpamFqxIVjIG1vxbxsaXdv
xZtjaSBiaXpuZXNvd2UuIAoKWmRhbG5lIHN6a29sZW5pZSBqxJl6eWtvd2UgdG8gbS5pbi4gemFq
xJljaWEgeiBuYXRpdmUgc3BlYWtlcmFtaSwga3TDs3JlIHcgc3p5YmtpbSBjemFzaWUgbmF1Y3rE
hSBwcmFjb3duaWvDs3cgcm96bWF3aWHEhyB6YSBwb21vY8SFIGphc25lZ28gaSB6d2nEmXrFgmVn
byBqxJl6eWthIEJ1c2luZXNzIEVuZ2xpc2guCgpDenkgbcOzZ8WCYnltIHByemVkc3Rhd2nEhyB3
acSZY2VqIHN6Y3plZ8OzxYLDs3cgaSBvcG93aWVkemllxIcgamFrIGR6aWHFgmFteT8KCgpQb3pk
cmF3aWFtCktyenlzenRvZiBNYWoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
