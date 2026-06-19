Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D67E1CD98F6
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Jun 2026 11:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-version:References:In-reply-to:
	Message-id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PuEFE2nQXfR7RTMKanhyUL470O9biyQBlSPcJdsHJ8g=; b=DIt5gVs5CR8gm+
	JqoOfLLvZcYqV4bXaV+HRkahsr78eqAXkuzyDu/n/kSzhB1eqUbl8NUjqBa0bYQ+HdF5GpCIm+RkE
	MNZPrFHVBTywSrCYZ+LWxgd8OS4J0ZxaLLAvaO0ucfMypvijHmltJkDDtHotwXbvIKvLgZntmOpSV
	lkLeCbBPA5cTNMD2Et2P7Qk+pZQuq+BVjbhX5iLk+a7Z9LL1gvw/0tKueTn0kuW+kFCVWltzrj+z2
	kdfVC9c1gM6esDU2cWF6Mf63aNfUNP4+bVetUlOfhyCCjkCdosqN171sjLdmXqyEYtVl9KgC9AXLs
	CKxtrUysBKwzOCvDernQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waXFY-00000002Knk-2x2R;
	Fri, 19 Jun 2026 11:19:04 +0000
Received: from ach1ajh48.fra1.oracleemaildelivery.com ([138.1.108.48])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waXFV-00000002KnO-1OVc
	for linux-rockchip@lists.infradead.org;
	Fri, 19 Jun 2026 11:19:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=prod-fra-20191115;
 d=fra1.rp.oracleemaildelivery.com;
 h=Date:To:From:Subject:Message-Id:MIME-Version:Sender:List-Unsubscribe:List-Unsubscribe-Post;
 bh=6XHOLVNfYc8PIK7z4Ng9VzyKHaePVd2K3FxJTjYMoD0=;
 b=P7fNXv6LbLTwJdIg5jf/h7+1Ps/FdIlGDP6XU+9IyOI8+FRtDf8qBO4GUvfcUZwCgtDVBwdTMF3M
   lz/yfTjPl7cRmiH6leP7uFEa3WBpUsg8cNLk2lJD1msCCaxTqqSag2JACFPX2ezny074VW+ebbYe
   vGvRwrwmiP1gCGvtaTYm1KsJua/UcnqAfqxSAk/sDWbJsGJno4RGWgqq3bUDKXM8sCyo4j0sv2Es
   PK8B2XZ+taAfkRGTAsxRkFLSBZvIaCCtazYH37cBkTmlRvAZvXusEBr9pUUfek3Z5HmyfLcs/lSh
   TuV0+Oqeuc3arrhbICWHRP0aDUVNpBjOgxc6BQ==
Received: by omta-ad3-fd2-1402-eu-frankfurt-1.omtaad3.vcndpfra.oraclevcn.com
 (Oracle Communications Messaging Server 8.1.0.1.20260212 64bit (built Feb 12
 2026))
 with ESMTPS id <0TGV1KWO9M3IXF50@omta-ad3-fd2-1402-eu-frankfurt-1.omtaad3.vcndpfra.oraclevcn.com>
 for linux-rockchip@lists.infradead.org; Fri, 19 Jun 2026 11:18:54 +0000 (GMT)
List-Unsubscribe-Post: List-Unsubscribe=One-Click
From: Laszlo Fiat <laszlo.fiat@tuta.io>
To: simon@symple.nz
Cc: detlev.casanova@collabora.com,	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,	piotr.oniszczuk@gmail.com,
	Laszlo Fiat <laszlo.fiat@tuta.io>
Subject: Re: [BUG] rkvdec-vdpu383-h264: wrong pixels at horizontal de-blocking
 edges y=4 and y=12
Date: Fri, 19 Jun 2026 11:18:10 +0000
Message-id: <20260619111810.564384-1-laszlo.fiat@tuta.io>
X-Mailer: git-send-email 2.43.0
In-reply-to: <1f178828-2cba-4120-bc6d-bb3be7b24073@symple.nz>
References: <1f178828-2cba-4120-bc6d-bb3be7b24073@symple.nz>
MIME-version: 1.0
Reporting-Meta: AAHEBF5Wo5zo4vZcl51G3QQ/nsUQJAqJmt+1l4LvQ0r+TmC9k8mvhq/SL3JumIek
 LC5KmDFa0ezU/jXPQSGHeRg1wCVyaA1bb5iQYda4Xet+Oj7qZ3la7x5QtzOGw47t
 iwxpBAa/B9POk38+KRE4AKcVb8+owVEJR/iwT5Iud6DzstinrIX452zotT653IHY
 bV4qP5tOPWjnMJNiRE+qFH3I9IxqNBBrYQ/5Roj1SAugNVzXkRZlIuwU6gdyMOMh
 GaWfjMohYctgpnvESCdUAVN4NZSGVQPDJ8QN8DG9jEhbUiL1lIeY+pBQsTkVIC9B
 RIC509XTZTdHbmi5FDz0Rkc0hnuIT02bfHeXYArc+yKmkvEHl//cH1F/xky11lex
 cnuHNOXyYaJ4bPnYODxRla0veU8BGvTAYm6jHjiTv1X2DnvZ/uXaAQTkQBAZIiVT oj4d6Y8y
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260619_041901_937434_A3632A4F 
X-CRM114-Status: UNSURE (   5.52  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Simon,

I've experienced this problem since Detlev sent the VDPU383 support patches to the mailing list.
We had a brief e-mail exchange about it in January 2026, he couldn't reproduce it.

I've tested your patch available at [1] on 7.0.12 stable on my Rock 4D.
The patched kernel builds, the expected "RK3576 H.264 deblock priming..." line shows up
in dmesg, and this is the first time I have H.264 hardware decoding working properly
on the Rock 4D.

Thank you for your work.

Tested-by: Laszlo Fiat <laszlo.fiat@tuta.io>

[1]  https://github.com/SympleNZ/rkvdec-vdpu383-h264-bug/tree/master/fix

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
