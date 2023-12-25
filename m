Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBCD4C46CD2
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Dec 2023 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dIBncdXKa2R6Ny3JEbz0XjDCKBu80p2sYfsTI4Fyudk=; b=MjRVESzGRJRGPh9TjUfhTh695A
	ziVvJi6M9yHgxMjJT2b9zJbbr8Y3O+ltohlS6gkMhLG6b9muGA+/WlsosHr7KUuf+HU8jGKa4b6Mc
	245izWpy3oVMbrLjxCMH1ag5kE6rrOD9Q7n0KuncCzsAdP8W3b6K3WVoeTpl0r7GuwbEf210qeLI0
	RK0XCVg0CKfpIwPC97NT7Si3JCmEvfoElzCg/YJzC9EKR4F9nakYwL7Ua/ZEthrkDaxTSxYwblERR
	9HQyvEVG4PGXH77IkPFSsb3WGFXAAOv3AMf513Ih3f+rGPKE0n0Jq499J3Z0OyzR2xpNKioj3MGDm
	eb3Q0fsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHZxt-00A5DD-2X;
	Mon, 25 Dec 2023 01:41:09 +0000
Received: from mail-m25490.xmail.ntesmail.com ([103.129.254.90])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHZxo-00A5Cn-0M
	for Linux-rockchip@lists.infradead.org;
	Mon, 25 Dec 2023 01:41:08 +0000
DKIM-Signature: a=rsa-sha256;
	b=YF9QCVjw/KIDXKMZyIMlUqcONBtDWOJjVHgTCjuoY+enSoP7Wwpo/9qyYxVBGNelpV6rnjw9Sb+QClGW8Ifj2hslCUKOIYzQniRBuA+lge+/x3qBye0mntZsRby7Tr7TA97A2b4hYkIM6buU6vT5I80DWuPu1munegjei1ebTuo=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=GMZLRE8wiCcf66vWtJvP4Rf/MMslvu5minYC9AXa16A=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id 69B5D7801EC;
	Mon, 25 Dec 2023 09:40:52 +0800 (CST)
Message-ID: <b1381668-9561-4b69-9183-3ec582b4c0df@rock-chips.com>
Date: Mon, 25 Dec 2023 09:40:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: vop2: 3566 vs 3568: green screen on 3566; on 3568 all ok...
Content-Language: en-US
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
 Linux-rockchip@lists.infradead.org
References: <7408CE66-E110-4DB2-8B73-856E71E16754@gmail.com>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <7408CE66-E110-4DB2-8B73-856E71E16754@gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0hJGVYfT0xCTh0fSksfQ0xVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5IVUpLS1VKQk
	tLWQY+
X-HM-Tid: 0a8c9ea1ca7bb24fkuuu69b5d7801ec
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mk06DCo*DTw9QhIVDzE6TzwY
	MR4wFBpVSlVKTEtIT01DT05JQklPVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSUhCTTcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231224_174104_670148_6EDDA3F7 
X-CRM114-Status: UNSURE (   9.64  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgUGlvdHI6CgpPbiAxMi8yNC8yMyAyMDozNywgUGlvdHIgT25pc3pjenVrIHdyb3RlOgo+IEhp
ICoKPiAKPiBJIGhhdmUgd2VsbCB3b3JraW5nIHZpZGVvIGRlY29kaW5nICsgcmVuZGVyaW5nIHRv
IGRybSBwbGFuZXMgb24gcmszNTY4Lgo+IAo+IE9uIHJrMzU2NiBob3dldmVyIHZpZGVvIHBsYXli
YWNrIGdpdmVzIG1yIGdyZWVuIHNjcmVlbi4KClBsZWFzZSBjb25maXJtIHRoYXQgdGhlIHZpZGVv
IGRhdGEgeW91IHJlbmRlcmluZyB0byBkcm0gaXMgYWZiYyBvciBub24tYWZiYz8KUGxlYXNlIGFs
c28gcnVuIGNvbW1hbmQgImNhdCAvc3lzL2tlcm5lbC9kZWJ1Zy9kcmkvMC9zdGF0ZSIgYW5kIHVw
bG9hZCB0aGUgb3V0cHV0IHdoZW4geW91IGdldCBncmVlbiBzY3JlZW4gb24gcmszMDM2CkZvciB0
aGUgY29udmVuaWVuY2Ugb2YgY29tcGFyaXNvbiwgcGxlYXNlIGFsc28gZ2l2ZSB0aGUgZHJpLzAv
c3RhdGUgd2hlbiB5b3UgcGxheWJhY2sgdGhlIHNhbWUgdmlkZW8gb24gcmszNTY4Lgo+IExvb2tp
bmcgb24gNi42Ljggdm9wMiBzb3VyY2VzIGkgc2VlIGUuZy4gcmszNTY4X3ZvcF93aW5fZGF0YVtd
IGlzIGNvbW1vbiBmb3IgMzU2NiBhbmQgMzU2OC4KPiAKPiBJIHJlY2FsbCBob3dldmVyIEFuZHkg
WWFuIChyb2NrY2hpcCkgc2FpZDoKPiAKPiAiQnV0IHRha2UgY2FyZSB0aGF0IHRoZSB2b3Agb24g
cmszNTY2IGhhcyBhIHNwZWNpYWwgbGltaXRhdGlvbjogdGhlcmUgYXJlIHRocmVlIHdpbmRvd3Mo
Q2x1c3RlcjEvRXNtYXJ0MS9TbWFydDEpIHRoYXQgaGF2ZSBhIG1pcnJvciBsb2NrLCB0aGF0IG1l
YW5zIHRoZXkgY2FuJ3QgYmUgcHJvZ3JhbW1lZCBmcmFtZWJ1ZmZlciBhZGRyZXNzIGluZGVwZW5k
ZW50bHkgLCB0aGV5IGNhbiBvbmx5IHNoYXJlIGZyYW1lYnVmZmVyIGFkZHJlc3Mgd2l0aCBDbHVz
dGVyMC9Fc21hcnQwL1NtYXJ0MOKAnS4KPiAKPiBJIHN1c3BlY3QgbXkgMzU2NiBncmVlbiB2aWRl
byBpc3N1ZSBpcyBzb21laG93IHJlc3VsdCBvZiAidG9vIiBjb21tb24gdm9wMiBjb2RlIGZvciAz
NTY2ICYgMzU2OCB2YXJpYW50cy4KPiAKPiBJc24ndCB0aGF0IDM1NjYgc2hvdWxkIGhhdmUgZGVk
aWNhdGVkIHZhcmlhbnQgY29kZSB0byBkZWFsIHdpdGggMzU2NiBsaW1pdGF0aW9ucyBtZW50aW9u
ZWQgYnkgQW5keT8KPiAKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
