Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330A0606A31A
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 00:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=pBbQk6Wv;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=W+TkivZ5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=R3ZDsoHskryygSrcEwnjeT0IU5IBMEuUQKQc9NTrdXI=; b=pBbQk6WvMkCMcEusI9aUURLtde
	B3j8J7ddQMOM2np03FAJYmg1ZLOPrc7gH9oLFiJpuITDjPwGK/N0PkTIyr2jtf4lVrRP7RfscJg5a
	pHHIFSBSAmeaKWNgemVuoiJqvVk++e6b/x2HbfO0H03iqoFJIkFq+6nj+H7veQkE+1e7FdKGM+XU2
	DKC/vv9k4XKxykmCGPhHbybg/uUACF1TNTxHk5NT0Rjb1r3PYeNmuUcUCIBTOgC1pQM8nO/CJXUPt
	10UMD3/j/zVWZnbANpV8IDxx5tiu5wnAvyLDG+0sPEviIT7K3vxpeaRjyBIjNKq1Jna0RGTAPJbxI
	btRNX3aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMENp-000000087Us-2k2R;
	Thu, 29 Oct 2026 00:52:45 +0000
Received: from mail-m8371.xmail.ntesmail.com ([156.224.83.71])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMENl-000000087U9-23cC
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 00:52:43 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 52b6f1694;
	Thu, 29 Oct 2026 08:52:37 +0800 (GMT+08:00)
Message-ID: <317c3705-b492-4a1e-a764-1e632a85e2bf@rock-chips.com>
Date: Thu, 29 Oct 2026 08:52:33 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Bean Huo <beanhuo@micron.com>,
 Heiko Stuebner <heiko@sntech.de>, Stanley Jhu <stanleyjhu@google.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, linux-rockchip@lists.infradead.org,
 linux-scsi@vger.kernel.org,
 "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
 "Martin K . Petersen" <mkp@kernel.org>
Subject: Re: [PATCH] scsi: ufs: core: Retry the full device init on fatal link
 loss
To: Bart Van Assche <bvanassche@acm.org>
References: <20261028073129.1661829-1-shawn.lin@rock-chips.com>
 <c494f758-e3ad-4638-a17e-44d5f9234ef2@acm.org>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <c494f758-e3ad-4638-a17e-44d5f9234ef2@acm.org>
X-HM-Tid: 0aa18525005103a4kunm7f81231710029b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCGEtLVkJLGk1JHksZHk8ZHlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUJCSU
	5LVUpLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=W+TkivZ5H4rLaGT/KPr6tsKTjsqkX/f+RSa18XpOk5s9JiVF7Owc6lhj6p2dZHfO3hh9CEzjt7aRymM0diriBLewsk1UeI13fcV0LsdTGVEplkh8MzdSnhe9KR/GTIEDCJ4ueIQ2IKkJd/FXKkdeLX/z7Pd+dWim95Ekh27pL9Q=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=jOrhTVEfgHemb3Re8uZ153gCT4ldGKVvOgMhkeZdfa8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_175242_108682_8858E960 
X-CRM114-Status: UNSURE (   8.92  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgQmFydAoK5ZyoIDIwMjYvMTAvMjkg5pif5pyf5ZubIDQ6MTYsIEJhcnQgVmFuIEFzc2NoZSDl
hpnpgZM6Cj4gT24gMTAvMjgvMjYgMTI6MzEgQU0sIFNoYXduIExpbiB3cm90ZToKPj4gK3JldHJ5
X2luaXQ6Cj4+IMKgwqDCoMKgwqAgaGJhLT51ZnNoY2Rfc3RhdGUgPSBVRlNIQ0RfU1RBVEVfUkVT
RVQ7Cj4+IMKgwqDCoMKgwqAgZXJyID0gdWZzaGNkX2xpbmtfc3RhcnR1cChoYmEpOwo+PiDCoMKg
wqDCoMKgIGlmIChlcnIpCj4+IC3CoMKgwqDCoMKgwqDCoCBnb3RvIG91dF9yZWxlYXNlOwo+PiAr
wqDCoMKgwqDCoMKgwqAgZ290byByZXRyeV9kZXZpY2VfaW5pdDsKPiAKPiBNb3ZlIHRoZSBjb2Rl
IHRoYXQgbmVlZHMgdG8gYmUgcmVwZWF0ZWQgaW50byBhIG5ldyBmdW5jdGlvbiBpbiBhIGZpcnN0
Cj4gcGF0Y2ggYW5kIGFkZCBhIGxvb3AgYXJvdW5kIHRoZSBjYWxsIHNpdGUgb2YgdGhhdCBuZXcg
ZnVuY3Rpb24gaW4gYQo+IHNlY29uZCBwYXRjaC4gRG9uJ3QgY2hhbmdlIHVmc2hjZF9pbml0KCkg
aW50byBhIGdvdG8tc3BhZ2hldHRpLgo+IAoKV2lsbCBkbywgdGhhbmtzLgoKPiBCYXJ0Lgo+IAo+
IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
