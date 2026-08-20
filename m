Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96F51C5DF82
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Aug 2026 07:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KFxunOl36xvKMJL6/plkQDnJ4QgNkAaV7BCJtBETDIY=; b=boBNjxvHkZd9pf
	4x9TX4MLt+f24NpyZnqEl9N4DovaSM5BKYQB1pBPr7xrN9M+y5V+6jO4AYM7UT6g/Pxo9FtIEUeML
	MuQeBPZ68MwAYryvWxJwsVXr4pShkIes5rzUddrvc73fe0fsuOEDnC9Sb4BJOLElp/Tp8cSZ+rFDg
	KNmxlEhqEGZFkXOx0YSSBPZ/nontcHEPeCJcafBeT26HkhmdsfSacm9W55ixCGW2CxpndBiaDP5/V
	MG2ydoiMrj5sthgZtb4Y6uDm0tU/WV5kxd8muP3TFmV6GMAzZlQl8Zn0+pA0ao+C/CodgzzYse8Tn
	0pNCkofW8VVwbFPtDhQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwx92-0000000B3GA-2GdA;
	Thu, 20 Aug 2026 07:25:00 +0000
Received: from flow-a3-smtp.messagingengine.com ([103.168.172.138])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwx8z-0000000B3Ed-2dpN
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Aug 2026 07:24:59 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailflow.phl.internal (Postfix) with ESMTP id DD0E21380199;
	Thu, 20 Aug 2026 03:24:56 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-04.internal (MEProxy); Thu, 20 Aug 2026 03:24:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1787210696; x=
	1787214296; bh=49U1KQDJobQ6fDU08W7OYFd9CFZwvQ7xn+MpNhh8QuI=; b=H
	UwcTQRNM6p7Jx8hquSLsKdvi/R/v9Ush02kfEKU+TGTUgINNJ9AlvReisBKuqzV6
	TFgwl+oDOwJH/Q85M1YAcGnWRfgYvM9SFy2WdxTNVyWC7UYOKieVQpcAYI0/KwWs
	Rejt0dkLjVNqtX8VqE5Fqvmn5VY4vAvAMSEmv/fneGjrKPH/AWcykx6ZZS7nShO2
	RclhHzUAc6wTSDpffKHUJXdB8Xhyogay7xfbvWEHZ4HJj0Cqvz0XiruUmcvox8LT
	ZLWkjpLQAuOp9rU5yz/oXXjIy/8kWq8hkdyuAgRYGjVSkO8B8n/3njYOV+EuuA67
	+p/AXTv1JdQjNfsyjur6Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1787210696; x=1787214296; bh=4
	9U1KQDJobQ6fDU08W7OYFd9CFZwvQ7xn+MpNhh8QuI=; b=SHPocS+tDTJTUvds8
	ZwmUuPr9bJgoQ/GL84vbwEEGVFrOm0KJ4esf7e2u22oO/l9ickb1bG3hZlVio6E5
	mMvCSnv25HWNQg4EWSxHBtn/mHBUQ3eNHXb4G9OEnu+fD0bzFyQCNAPtUkM/Zhui
	m8oQcKU60DdlecIYCxscLmkGM+1vjJ7x8jL51c9TWERmSil3v4NRlPb/zGnMtNWP
	TFOSC3CV5oAfh5epacpy+l6tqzKNVPhWhxHNcAb0fdNy/xFrS+/RVoAG5djcOtA2
	ZRAMClBGg/DoVwrMCeVyaGngDOuY2npt/+Xg8Qg06+A1pExb2WDu8DtK8+TygiJD
	bFiDQ==
X-ME-Sender: <xms:yKuGalDxHVKbVJ-3wzhF8TLyuLI9MCvXo_f3Qa1KQef_vAJv5HQBag>
    <xme:yKuGahwlxhWiy9uQ1KLqJ3fjIox3idGIOgAFe98Tj6nSzQ9koN3lUtCYZgAoXiGBr
    eo2wyhkDgSigKRg22kn-QXk4NHEtb34oq_G-AmHx4uUfaaIFveR8S4>
X-ME-Received: <xmr:yKuGap4407_KQ2pwyPsEyPtv1767oWrIXFWWYI-go-xrQTlXjU6t1Ft6zeEaxfQMlc-pTa_tHQ>
X-ME-Proxy-Cause: dmFkZTGDoCWsctuhusIgeAdpVJpMrx8/Gl5EazEW/ha9rctVSqmrDDgCYGt723FgkNKrUC
    7rfEAphm+y6djBhX9OJykBguO5ID7j4sjPNQlPIamDK3YCnSa2/qetO6nE91Ann1X7xTi1
    4OcRfQSy9+eqdj16xEIiqD/xyjv2PeaD2hj5u/5WxNzvbQs15qw1/mtOAwRYHfx4m241vR
    VIWWHg7vK9hsOUtanKiVCwIDcdwmbqqLhqzPyXBkXkfRvcG33SJoFCIdeRYwc/5gj77UAQ
    2hHojGpgsyFPvnTkhRcFSQa83w7eAiEE4m1llM2wPl+JVrN65RZAKCn5rVHKLYnHXcZDcJ
    bfj4Df1Sc5tbVQQ6lil5wBd7T0EIbossJZeAOm4A/vhLKMmItMKogfypiM7Z4/EsXWjagN
    QR6eHhqpED0UnTmcC1uylQ9wAd6CVw2xOKdmSqG4MFkiEOHxO7Nu/JeVrioh+j60qCYGXL
    lPWLvSt26DGr2E90MlpTvTYyfsvTVcO2SUQA/05wtuQXOj/bsqBIo3OvzPzUdkJoEV+3+K
    5GF9FTaz4Uk1aIYOhyJ6IHWTs3DO0t6tdqBmtQBAJXsqIIkVaqDocJoJnx6dyxSZvumB0+
    sk8exY44JozEBOOUd76WJGDrj7rirTIWxn76v138dnsYGokyYFPnQsNix9vA
X-ME-Proxy: <xmx:yKuGaiziWZ769tEqEZ2K0M9D5mbdlSfdc1OhzwGYR3C7XCXvrNA9WA>
    <xmx:yKuGatfv06XzoCo4MEKYhNSbceE9xU6LNEbf0D4O5fJG0nUCBAiD7Q>
    <xmx:yKuGanCzHU4MNHv9RJgkl9kcghyozsmoVcaZK6bGonn05ok4_GQBNQ>
    <xmx:yKuGah5AbUWFQFcUha1P26-nZsbVnc7U3taSHe0o3zBBJojbCtIuXA>
    <xmx:yKuGaq3NzXr0ppkbsJLacudaqZxwsH51bVEdZ0KIhs2Z_-BDlPv_EStb>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 20 Aug 2026 03:24:53 -0400 (EDT)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: robh@kernel.org
Cc: krzysztof.kozlowski@oss.qualcomm.com,
	conor+dt@kernel.org,
	tomeu@tomeuvizoso.net,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 04/12] dt-bindings: npu: rockchip: add rockchip,rk3576-rknn-core
Date: Thu, 20 Aug 2026 22:16:35 +1200
Message-ID: <20260820101635.752920-1-gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <178709455518.1014304.1443906758035976924.robh@kernel.org>
References: <178709455518.1014304.1443906758035976924.robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_002457_772381_E495EB4A 
X-CRM114-Status: GOOD (  11.56  )
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

Hi Rob,

Taking the last paragraph first, since that is the actionable one.

In v9 the dependency will be in the patch itself, as a git note that
format-patch carries below the ---, rather than only in the cover letter where
it is now. It says the patch touches only Documentation and applies to
v7.2 on its own, and that the series it belongs to is based on next-20260814 plus
Igor Paunovic's "[PATCH v2] accel/rocket: request the core clocks by name",
which the driver patches need and this one does not.

  https://lore.kernel.org/linux-rockchip/20260729130743.128876-1-royalnet026@gmail.com/

I re-ran dt_binding_check after your mail, on the three bindings this series
touches, with dtschema 2026.6, which is the current release on PyPI,
and yamllint 1.38.0.

  npu/rockchip,rk3588-rknn-core.yaml       clean
  power/rockchip,power-controller.yaml     clean
  iommu/rockchip,iommu.yaml                clean

None of the three reports in your mail is in a file this patch touches. The
unresolvable reference is in mfd/qcom,spmi-pmic.yaml, and the refcheckdocs
hits are in two translations and arch/arm/xen/enlighten.c. I mention it only
so it is clear I read them rather than assumed, not to argue the bot was
wrong to print them.

v9 is not posted yet, so please read the note as what it will carry and not as
done. I am holding it because v8 drew three reviewers within a day of going out
and I would rather collect the rest of that than reset the thread. Say the word
if you would prefer the respin now and I will send it.

Regards,
Jiaxing

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
