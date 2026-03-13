Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 236A2106FD69
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Mar 2026 02:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9qcpMXj2KZIrVjYFylF4yX3G8WswjfmCTaj7ylrOl2U=; b=aTvuRxLRZ+6/bk7Ghr2EFKGpbU
	6zkVOzTxq1aZ7EXnHQEeGIp8vYJzFLDCZdFf5OtGTiY4BeSEC9sH02r1Tp+W7/1meTYmAmwxwZQk4
	jKfFMX88h/1boE/g8PclCNd1cURGyRMAx++eZDQ+bcCx/UtFM+rB/G8opOB6ucnksh5Ry3/QS5Nzh
	XRq2Unt0pAStxDw/DJX4vBcUg5eX4B03QOztjR9Nd80fcSRymOR3jazB4DSKNOAdYqwv4sd/boqrd
	aXzw66vIA3kxZ6osXp07EVR3IiVWk1/Q3TPhvQCoOV5hxJfOOeXdSULaBl28bHoEU/PQ7MIOu6XuP
	TcpYqhaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0s65-0000000GCw8-3Krt;
	Fri, 13 Mar 2026 02:17:53 +0000
Received: from mail-m49245.qiye.163.com ([45.254.49.245])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0s62-0000000GCvH-3qDz
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Mar 2026 02:17:52 +0000
Received: from [172.16.12.17] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 36c7a8923;
	Fri, 13 Mar 2026 10:12:38 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] scsi: ufs: drockchip,rk3576-ufshc: dt-bindings: Add
 new mphy reset item
To: Bart Van Assche <bvanassche@acm.org>,
 "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Heiko Stuebner <heiko@sntech.de>
References: <1773276707-24857-1-git-send-email-shawn.lin@rock-chips.com>
 <b9024d90-6df7-4a2c-85fe-7f5178e7d1cf@acm.org>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <32093ab4-28aa-f494-1282-56227bd949e4@rock-chips.com>
Date: Fri, 13 Mar 2026 10:12:37 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <b9024d90-6df7-4a2c-85fe-7f5178e7d1cf@acm.org>
X-HM-Tid: 0a9ce4f79bfb09cckunm77bce527620e7
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRhNGVZLT0NIT0xKHh9OSEJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=fWP88vm6ML1mQOER8/N1zsRulgr1p0ALo5N3PNrkS0JGMI9iItVrwxdKeuDNcniHXqpkdJTyv+5NzWI/U3QsdpUGNh57Tfze0fIe9gAnt9fd0R+xOUVyNPtW5H3gR1NCgkqx/DdNjdbJr74+dMJc9OvHdnDqV7bhgxsSbYRMz2c=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=40EDhtURQ1ujkPw8TBboNKLerCY21VM4ZRXSGa5HpGY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_191751_483491_7F90D2AA 
X-CRM114-Status: GOOD (  11.40  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

1NogMjAyNi8wMy8xMiDQx8bay8QgMjI6MjcsIEJhcnQgVmFuIEFzc2NoZSDQtLXAOgo+IAo+IE9u
IDMvMTEvMjYgNTo1MSBQTSwgU2hhd24gTGluIHdyb3RlOgo+PiBBZGQgdGhlIG1waHkgcmVzZXQg
cHJvcGVydHkgdG8gdGhlIGRldmljZXRyZWUgYmluZGluZ3MgZm9yIHRoZSBSb2NrY2hpcAo+PiBS
SzM1NzYgVUZTIGhvc3QgY29udHJvbGxlci4gVGhlIG1waHkgcmVzZXQgc2lnbmFsIGlzIHVzZWQg
dG8gcmVzZXQgdGhlCj4+IHBoeXNpY2FsIGFkYXB0ZXIuIFJlc2V0dGluZyBvdGhlciBjb21wb25l
bnRzIHdoaWxlIGxlYXZpbmcgdGhlIG1waHkKPj4gdW5yZXNldCBtYXkgb2NjYXNpb25hbGx5IHBy
ZXZlbnQgdGhlIFVGUyBjb250cm9sbGVyIGZyb20gc3VjY2Vzc2Z1bGx5Cj4+IGxpbmtpbmcgdXAg
d2l0aCB0aGUgZGV2aWNlLgo+IAo+IEkgc2VlICJkcm9ja2NoaXAiIGluIHRoZSBwYXRjaCBzdWJq
ZWN0IGluc3RlYWQgb2YgInJvY2tjaGlwIi4gSXMgdGhhdCAKPiBwZXJoYXBzIGEgdHlwbz8KCkFo
LCBteSBiYWQuIFRoYW5rcyBmb3Igbm90aWNpbmcgdGhpcy4gV2lsbCBmaXggaXQuCgo+IAo+IEJh
cnQuCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
