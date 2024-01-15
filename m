Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E137DC3DA79
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jan 2024 15:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iNxPtM5B0cHTaN91QBoJlfPMviNgEhsOPFGGsJQC+lA=; b=X0qtbinZNKhe8D
	oZBxeV1l+rVAgZod3E0XeECGMFEqjCl8sxn4VPDNS25eY9AoabqTDgNj4TS7YzLwD4eG95AM+PU6r
	9W+ynhrE5duCNIUpRZT+dn4UTd9yALLinsqZYfXAPJKP1XBWYU0l8qGEY1ceTpMVhElhgROZDyy9p
	Ny2dV1JESAfCQwjituFKLww/SnFCM2cqjbhtSglK7K1YMOwtsFpPeJvD+iUOmmX9yKDN5Fc11lRNP
	vR1HK5nyjvrGJ5vb4wXliEnUZJxTWbpWnMwkjRjCMgW6aTjHYPJuIfLoGLZ40QykjlIoov0SLv1hV
	ijYKP/wrT5nT1m3vwj9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPPCt-009TX7-1I;
	Mon, 15 Jan 2024 15:48:59 +0000
Received: from pv50p00im-zteg10011501.me.com ([17.58.6.42])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPPCq-009TUM-2A
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Jan 2024 15:48:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kyuhyuk.kr; s=sig1;
	t=1705333733; bh=yxNM4ChCxcfO1k8Hlw537DgVXRAXIZRMKWfvKsTXyrE=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type;
	b=JQlNQZqMl+B2aYMVXWvFwnRZIExG1g/izHCe19R87x7oy0OItSlfdn9Zx9NQnfvzy
	 IfSbbLTnTFwVj81JEvEBrQQWKvd10Szg39wte6sNhsyhc3rzkFyzwDwJBjHoS1JUL6
	 U05Jtq1tjR11qRPVKms3rl6zeGcfxfSWy8dxymZbzDONWjQiiMxcBsKui70c+dpeL4
	 ipWuXcpN0h2tB1wNbPgpSmHZyR00+3qUadrrCbuLi3HCk1RKyJtY86SIUQIHv3DhiA
	 451YJPZcjxMIe3d351mCnlErLO2Th8i8tTK4vAbpzRNoligIbitVEPlXwf2YeskG1v
	 mSg8gpI2yD5Dw==
Received: from kyuhyuk.kr (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-zteg10011501.me.com (Postfix) with ESMTPSA id BC2FF4A0176;
	Mon, 15 Jan 2024 15:48:49 +0000 (UTC)
Date: Tue, 16 Jan 2024 00:48:37 +0900
From: KyuHyuk Lee <lee@kyuhyuk.kr>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Tianling Shen <cnsztl@gmail.com>, Jagan Teki <jagan@edgeble.ai>,
	Ondrej Jirman <megi@xff.cz>, Andy Yan <andyshrk@163.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: rockchip: Fix Hardkernel ODROID-M1 board
 bindings
Message-ID: <ZaVT1S7bb6qZ++FK@kyuhyuk.kr>
References: <20240115145142.6292-1-lee@kyuhyuk.kr>
 <b4f97202-43ec-4f04-af95-b1ccd3b5d203@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b4f97202-43ec-4f04-af95-b1ccd3b5d203@linaro.org>
X-Proofpoint-ORIG-GUID: xfG1gLpxLCaQEbJ_kmI3LhtxShXho3-8
X-Proofpoint-GUID: xfG1gLpxLCaQEbJ_kmI3LhtxShXho3-8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-15_10,2024-01-15_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 mlxlogscore=785
 mlxscore=0 clxscore=1030 malwarescore=0 spamscore=0 phishscore=0
 bulkscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2401150115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_074856_758013_3F408136 
X-CRM114-Status: GOOD (  18.02  )
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

On Mon, Jan 15, 2024 at 03:58:56PM +0100, Krzysztof Kozlowski wrote:
> On 15/01/2024 15:51, KyuHyuk Lee wrote:
> > The vendor in ODROID-M1 is hardkernel, but it was incorrectly written
> > as rockchip. Fixed the vendor prefix correctly.
> > 
> > Signed-off-by: KyuHyuk Lee <lee@kyuhyuk.kr>
> > ---
> >  Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> You need to start testing your patches. Your last M1 fails as well in
> multiple places.
> 
> It does not look like you tested the DTS against bindings. Please run
> `make dtbs_check W=1` (see
> Documentation/devicetree/bindings/writing-schema.rst or
> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
> for instructions).
> 
> The DTS change will break the users, so would be nice to mention this in
> its commit msg.
> 
> Best regards,
> Krzysztof
> 

Hello, Krzysztof.

I am truly sorry for wasting your time due to my mistake.
From now on, i will carefully send PATCH with testing.
I'm really sorry.

Thank you,
KyuHyuk Lee.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
