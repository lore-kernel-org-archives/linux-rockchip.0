Return-Path: <SRS0=3svJ=HU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D82C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Feb 2021 10:54:40 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2F70F64E6F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Feb 2021 10:54:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2F70F64E6F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=oracle.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RFP6b7BsI3EXQqtO23Sg5N3l+YImdxWn1g4hlkwD2tg=; b=P6agl9LA2FKGubRqh0p3iZZH/
	8L0Q+ADDhciV8fTY35vtkVpdRrPD9EoOGP3hQ08bak20gt659afYHji4G8Ji4Rhh40xqmX073ocG2
	NdnZ85MR/myyblmz9bpKY+MW1zgkwRgu1oTJqt25dZC8pTPOlH0PnEyXet1dfbe8wq9SYxlo26n6Z
	+sCUXYy2FeVVxChY663Ve/n8Pl6FbKTNGi2Mxv9qmmIIfSPmJLkFBPDMSIEOt9FkpkteABpM6N8jH
	ccn7vAuRkhPrxjUWl62jQeC24XTnTat33SSTQySp1dyxgne7+aBArNpPaHQ/8ihvY5+dsYzd/jIMo
	n7a8JIIvQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCgx5-0005ux-1Y; Thu, 18 Feb 2021 10:54:31 +0000
Received: from aserp2130.oracle.com ([141.146.126.79])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCgx1-0005tx-VH; Thu, 18 Feb 2021 10:54:28 +0000
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11IAosOx086946;
 Thu, 18 Feb 2021 10:54:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=u+EbeWY0kC8yKqPJItRN34NJeUG7sw3ukrKrK2+AkTs=;
 b=EgOO2Lbi1r9oydC78SZADWrrncDu6rXN8Sdfy/IAoWF/lig4EHku9CJ0b+PLv0MtowBK
 J1qNK5QoMf60oUQzRs3q0/zGvexsq8X5mARzjYxmD8H1QHleptKmxy20mSMF/sIcJpN8
 PiA7X0042KbGj1/zDRlKKXgMl9JwVYgxAvDz7b9FWLu4Z1E3JFH+AR8IsYEiHMBr/zin
 Sv7rBWOdvEaMSUKMNObUng7AI3qm7mLUb4Owbj+cNm//xwe2hHNLpNzDxi8jD9U9Vw1C
 3C6VHDqb8l0M+dvevSoIujhBXMLs4B2FRh0czxJuyw3ykgJPTYB1CI21a7IoIkV6gWxd jw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 36p49bdpf0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Feb 2021 10:54:14 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11IAkQAJ188535;
 Thu, 18 Feb 2021 10:54:13 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 36prbqm72c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Feb 2021 10:54:13 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 11IAs9TV015168;
 Thu, 18 Feb 2021 10:54:09 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 18 Feb 2021 02:54:08 -0800
Date: Thu, 18 Feb 2021 13:53:52 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v1 06/18] media: hantro: Make sure that ctx->codex_ops is
 set
Message-ID: <20210218105352.GE2087@kadam>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-7-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210217080306.157876-7-benjamin.gaignard@collabora.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9898
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 spamscore=0 mlxscore=0
 phishscore=0 adultscore=0 bulkscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102180095
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9898
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 impostorscore=0 mlxlogscore=999
 adultscore=0 malwarescore=0 phishscore=0 clxscore=1015 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102180095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210218_055428_131047_7C185539 
X-CRM114-Status: GOOD (  19.29  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: peng.fan@nxp.com, kernel@collabora.com, festevam@gmail.com,
 devel@driverdev.osuosl.org, Anson.Huang@nxp.com, krzk@kernel.org,
 linux-rockchip@lists.infradead.org, wens@csie.org, linux-imx@nxp.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 p.zabel@pengutronix.de, s.hauer@pengutronix.de, mripard@kernel.org,
 robh+dt@kernel.org, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 jernej.skrabec@siol.net, gregkh@linuxfoundation.org,
 adrian.ratiu@collabora.com, linux-kernel@vger.kernel.org,
 paul.kocialkowski@bootlin.com, kernel@pengutronix.de, hverkuil-cisco@xs4all.nl,
 shawnguo@kernel.org, shengjiu.wang@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Feb 17, 2021 at 09:02:54AM +0100, Benjamin Gaignard wrote:
> Do not try to call ctx->codec_ops->done if ctx->codec_ops is not set.
> 

When you're writing a patch like this please say in the commit message
if this can happen or not.  Option 1:

Option 1: sometimes this is NULL in <some situation>
Option 2: this can't be NULL, but we are planning to allow that.
Option 3: I don't know if this can be NULL but do it for consistency

As we review and packport patches we have to figure out why you are
adding NULL checks so it really helps if you just tell us.

regards,
dan carpenter


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
