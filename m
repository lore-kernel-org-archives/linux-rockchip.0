Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEC55C77B76
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Apr 2023 11:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PBN/7fUtpHndLLwbTSG6jExnV29HnhC/oC5Nu5fgypk=; b=RtlZHZcdvKIal6
	a2HhzDo6DLJXqPiCdqBqV0ERJGGzVa381OalRKkuDKEWxXmjO+NMDhZCUeNsVjb19/soSnZZLEcNb
	fXi0CLaMXIEeh6sLmFt6QpDcmMZRNtbeEPPbJLIgjTmCJdHUOnQvr6MYH9wiyHgZDbnq70h5vDMxU
	QtUcfZK8XqXfJOB3147l1haH5CXaAiRnGgaRkXGbDMxSC2h2x4xrAeWEqdwwGqHxNDcQoVv06p2HG
	Knap4MJJSCPH8I6iRGvJm+HMGkirYy3G2dEumibhzRpZaD/kemjeOnNvUnZjHZVyR2igUFZDzQ8Id
	xiZAQfPfpqZAzlFEz9Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmv0H-0062ui-2g;
	Thu, 13 Apr 2023 11:20:37 +0000
Received: from m1380.mail.163.com ([220.181.13.80])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmv0D-0062st-2q
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Apr 2023 11:20:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=ETJhgqnJgjqHhyB3FTgl3Mz97fHNKJ2VKFE2Nk6poKs=; b=Q
	A20EehkM9+rTpxOe8r4ZVljuDPQwa45zievnek2V9KfdG6gdHc8FjHamcz4Z/bkl
	ieU+uOz+ds3PDDTx8hTBAWLvCqsvoMi24885+OysgdK4I7CesJN+XnV/kbRdJFDJ
	T7AOGO52I/q/IQrCFWvOQaX6azTJq8sDD/IyASn994=
Received: from andyshrk$163.com ( [58.22.7.114] ) by ajax-webmail-wmsvr80
 (Coremail) ; Thu, 13 Apr 2023 19:20:31 +0800 (CST)
X-Originating-IP: [58.22.7.114]
Date: Thu, 13 Apr 2023 19:20:31 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: 	"linux-rockchip-join@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?subscribe=C2=A0to=C2=A0linux-rockchip-join@lists.infradead.org_?=
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20230109(dcb5de15)
 Copyright (c) 2002-2023 www.mailtech.cn 163com
X-NTES-SC: AL_QuyTA/+Tu0Ao5yadbelS3D1r87tlCJry3ahzn/4Xe/09mADSyhwhTV5CJUbn6MO8iTD1o+qnC8sX6FFVj3JC
MIME-Version: 1.0
Message-ID: <78ab04ef.4e54.1877a587aad.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: UMGowAAnEEl_5TdkmS0GAA--.38706W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbCfhZQXmDcNldXDwADsg
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_042034_496381_869B84AF 
X-CRM114-Status: UNSURE (  -0.59  )
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

CnN1YnNjcmliZcKgdG/CoGxpbnV4LXJvY2tjaGlwLWpvaW5AbGlzdHMuaW5mcmFkZWFkLm9yZyAK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
