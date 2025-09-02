Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 070EECA0FFE
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Sep 2025 13:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zEMG5CDL+qwJBrjR3QbvCVDYNJqiajh3VZtrRtqTo00=; b=yf0Ek3QUAO0IIF
	Cogr7GvJwVHWTbFCVQV7ieH5TsMlnTEwERdTiHUYjjV8bB4NqJYi6BM4dpqava8tsFCvo22IpsZ6A
	YWde+TdVrSP2lNlhbXkmirJGUb14oGxctYaXSLwBQebq3p5fOEb3h9mdJUR/688o2rauEjH09xGyd
	dh25dlb+4n/kXzgNhCHQQ1SYpPc9/IWvielz4dEc4aW1ci5wi1MZs8ZJKjhNd5HG2RQ42xsA9GUBE
	iWlSv2OHUv6z9OHp7JSDYkQ41JKHIH0ed/jy/E0jr/K+7GL/izVRIN77Q9031mA+rHwEL8T0qDF4J
	zoMRvNMmwvyGztYdhaIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utQhO-0000000HVoE-0Qmm;
	Tue, 02 Sep 2025 13:05:22 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utP6r-0000000Gu4o-0mrm;
	Tue, 02 Sep 2025 11:23:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1756812213; x=1788348213;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=p/8ygFbEgtNV5wSQi1SEP1xqS2pYIN9T58TZ8hpdiH4=;
  b=hiElTAQwOHcfYbfktIyM8BWMdQrxwvGfRS4axH5QF6286ldUzCoej00V
   EkHQqstHZa6aDPuIm/EVrHF8QJbMlGx61mLNitCU6XtDiKdXquauLAYXR
   PDKrQ9AnN/zgr3ttRwgnfXp/O7i55ayTX/cs7nDfHE8z5bvmcOCskEHuL
   F1xiGTf92kMg8hg2R2fbLj56szzy322OsgyC1x+Gy6q12AurYXmeJ1QL/
   P5mYbc8vOy5zk7uS9X+i/QtzPKKbac2dNEvbAD/tAKxmSO2di/YOX6gP4
   hfbNhYaswBY46z/z7puqW/4ZzOL11H0ycSTRrI+Mni9g/A5DC5tMbn4gm
   g==;
X-CSE-ConnectionGUID: /InFAUSAQBiDzQYzAB7Jhg==
X-CSE-MsgGUID: iRlDMovyTvqnQs9GRWqNCw==
X-IronPort-AV: E=Sophos;i="6.18,230,1751234400"; 
   d="scan'208";a="46028589"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 02 Sep 2025 13:23:27 +0200
X-CheckPoint: {68B6D3AF-1E-410E8DD8-CEA8F0F8}
X-MAIL-CPID: 9CBDA58469C4256730D2998464D30FAE_3
X-Control-Analysis: str=0001.0A002111.68B6D3AC.0013,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 05936164002;
	Tue,  2 Sep 2025 13:23:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1756812203;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=p/8ygFbEgtNV5wSQi1SEP1xqS2pYIN9T58TZ8hpdiH4=;
	b=R/6snUputxLjudPp2/0ad8T64Y4pm5GRb2KwnfMLVCp5LfZpqNekWLfHOny1No/XlzPB4I
	c+SEfmmfitLnJoO3RRVkFhB/t4V+lJn2Zd70ncslVuUh8X6VEp9c7av5zZbRmb8Fisgwmm
	XUXzDRq18/YnHkNkKGehYejfRuPbCoLa0GinSKWFcFDrPwM7Kny/NALHrmtXiS+1IYe9Le
	vBYpeQUA05O04JYpo9C+yr3kSmo6+Q1fsdKUM2xfiWYKaQ8dZLHlb26XucxMwh/4hdITDM
	t5NBsVIOX+V0NMqPPKbQ6ZgDMt1lfiqHpcc10nsVc8309/JGAWgCozg6jcGYtQ==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Adam Ford <aford173@gmail.com>,
 Krzysztof =?utf-8?B?SGHFgmFzYQ==?= <khalasa@piap.pl>
Cc: Stefan Klug <stefan.klug@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>,
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>, Ondrej Jirman <megi@xff.cz>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: FYI: i.MX8MP ISP (RKISP1) MI registers corruption: resolved
Date: Tue, 02 Sep 2025 13:23:20 +0200
Message-ID: <5921855.DvuYhMxLoT@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <m31popxjqk.fsf@t19.piap.pl>
References: <175308758352.3134829.9472501038683860006@localhost>
 <CAHCN7xKq_o_u7PhPMcZ2W9nzrFP8+CnhaYJOyxnjpKfbMTBCEw@mail.gmail.com>
 <m31popxjqk.fsf@t19.piap.pl>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_042333_722569_35E1C19D 
X-CRM114-Status: GOOD (  13.94  )
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

QW0gRGllbnN0YWcsIDIuIFNlcHRlbWJlciAyMDI1LCAxMTo1NDoyNyBDRVNUIHNjaHJpZWIgS3J6
eXN6dG9mIEhhxYJhc2E6Cj4gSGksCj4gCj4gc3VtbWFyeToKPiAKPiBJJ3ZlIGRvbmUgYSBmZXcg
YWRkaXRpb25hbCB0ZXN0cyBhbmQgaXQgc2VlbXMgdGhlIE1FRElBX0FYSSBjbG9jayBpcyB0aGUK
PiBwcm9ibGVtLiBSZWR1Y2luZyBpdCB0byA0MDAgTUh6IHdoaWxlIHN0aWxsIHJ1bm5pbmcgTUVE
SUFfSVNQIGF0IDUwMCBNSHoKPiBwcm9kdWNlcyBubyBlcnJvcnMuCj4gTUVESUFfSVNQIGF0IDQw
MCBNSHogYW5kIE1FRElBX0FYSSBhdCA1MDAgTUh6IHByb2R1Y2VzIGVycm9ycywgdGhvdWdoCj4g
KHJlZ2lzdGVyIGFkZHJlc3MgZXJyb3JzIHdoaWxlIHJlYWRpbmcgYW5kIHdyaXRpbmcgZnJvbS90
byBJU1AgTUkKPiAobWVtb3J5IGludGVyZmFjZSkgcmVnaXN0ZXJzLCBvbmx5IG9uIHRoZSBzZWNv
bmRhcnkgSVNQIChpc3AxKSwgYW5kCj4gZ2VuZXJhbGx5IG9ubHkgd2hpbGUgc3RyZWFtaW5nIGRh
dGEgZnJvbSB0aGUgSVNQKS4KPiAKPiBXaGF0IGlzIGRyaXZlbiBieSBNRURJQV9BWEkgY2xvY2sg
cm9vdD8gTUVESUFNSVg6IElTSSwgTENESUYsIElTUCwgRFdFLgo+IAo+IEFjY29yZGluZyB0byBi
b3RoIGRhdGFzaGVldHMgKGluZHVzdHJpYWwgYW5kIGNvbW1lcmNpYWwpLCBNRURJQV9BWEkKPiBp
cyBsaW1pdGVkIHRvIDQwMCBNSHogaW4gbm9ybWFsIG1vZGUgYW5kIDUwMCBNSHogaW4gb3ZlcmRy
aXZlIG1vZGUuCj4gQWxsIG15IGhhcmR3YXJlIGlzIHNldHVwIGZvciBvdmVyZHJpdmUgbW9kZSwg
dGhvdWdoICh0d28gbWFudWZhY3R1cmVycywKPiBib3RoIHVzaW5nIHRoZSBzYW1lIFBNSUMgc2V0
dXApLgo+IAo+IFNpbmNlIG5vIGhhcmR3YXJlIGluIHRoZSBvZmZpY2lhbCBMaW51eCBrZXJuZWwg
dHJlZSAoRFQpIHVzZXMgdGhlIHNlY29uZAo+IElTUC4uLiBTaG91bGQgd2UganVzdCBhZGQgYSB3
YXJuaW5nIHRvIHRoZSBpbXg4bXAuZHRzaSBhbmQgYmUgZG9uZSB3aXRoCj4gaXQ/Cj4gT3V0IG9m
IHRyZWUgaGFyZHdhcmUgdXNpbmcgaXNwMSAoY3NpMSkgb2J2aW91c2x5IGV4aXN0cy4KClRoZXJl
IGlzIGFsc28gWzFdIHdoaWNoIGFkZHJlc3NlcyBub3JtYWwgbW9kZSBhbmQgY2xvY2sgbGltaXRz
LiBJIGRvbid0IGtub3cKaWYgdGhlcmUgaXMgYW55IHByb2dyZXNzLgoKQmVzdCByZWdhcmRzCkFs
ZXhhbmRlcgoKWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI1MDIxOC1pbXg4bS1j
bGstdjQtMi1iNzY5N2RjMmRjZDBAcGVuZ3V0cm9uaXguZGUvCgoKLS0gClRRLVN5c3RlbXMgR21i
SCB8IE3DvGhsc3RyYcOfZSAyLCBHdXQgRGVsbGluZyB8IDgyMjI5IFNlZWZlbGQsIEdlcm1hbnkK
QW10c2dlcmljaHQgTcO8bmNoZW4sIEhSQiAxMDUwMTgKR2VzY2jDpGZ0c2bDvGhyZXI6IERldGxl
ZiBTY2huZWlkZXIsIFLDvGRpZ2VyIFN0YWhsLCBTdGVmYW4gU2NobmVpZGVyCmh0dHA6Ly93d3cu
dHEtZ3JvdXAuY29tLwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
