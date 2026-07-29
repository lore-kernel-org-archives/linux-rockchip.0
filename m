Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC8E3C53200
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 10:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rHji7sPDOl2FgLS3uOc5jlDkh+ifYiC7Xx/CiA7i7ek=; b=RfkMmxE+3/Hh1q
	F/KCVFjIE6JqkWhc7x4DXADClAsx2oX8rVjp0Z209Bkm4ZLbtOqR2+uyVSVHlEjPCMCNg35toIYEc
	aDn7ULiJ9Iqbm0HtuK2FicHcb2Spc1LZ3S6W7hZuMCN2xbSRo9B8mY63p7K2iK7AolkTpiGO/lOtp
	TrRIPRlg/50F4tWJn6SSa+uMq55+pt96GhedQ0/TPP7aHTBP+EQscRIzthoF/2639sGRisPy3J7Jp
	PnKRtmzPbJXK5aNzSJ5UkrkrWvxWJ09Ntjv25h2RM7fFdMPwX/0OJTMegOyLTTjGStEblOnAvO4r1
	4PYL5gRi0Vra3uBqnteQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp1ri-00000007bgR-2nY6;
	Wed, 29 Jul 2026 10:50:22 +0000
Received: from flow-a7-smtp.messagingengine.com ([103.168.172.142])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp1rg-00000007bg5-00ho
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 10:50:21 +0000
Received: from phl-compute-09.internal (phl-compute-09.internal [10.202.2.49])
	by mailflow.phl.internal (Postfix) with ESMTP id 918DB138026D;
	Wed, 29 Jul 2026 06:50:18 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-09.internal (MEProxy); Wed, 29 Jul 2026 06:50:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1785322218; x=
	1785325818; bh=BlBB5Tx9flKCz2oovCEKGKaD1po58aAbOnrVH4uf10A=; b=p
	NFjyd7KZWjMR9AstRGVNIPUCczO9H9UNmxcnJgSjdqFrhlNASI6VOCW+nV8OQvFs
	qIw8+hsmYbPmhGcsU9u6HWln8h4/pcuKrJ2RbapZnroduXa+0+1X9FbjCgV7nCWl
	LGOQD80O65trCj2xGzIOAsTFUGRQq0H4u7VGwa8vNRMiJubNU0CSo1TCGYbBv+kj
	LWYiABYJiYfBYhKMtKY0XUM/iQlvsyeiQS+L3LGngiscUTh/I2dU11gIZ5E6QEBZ
	fVIllA9cpn0M8OTRDs0MEjIiSnV3k4MoLMrkBlUuArxytVQrDH24HaeUdhwFPww6
	XMPSFKy2m+fCGtFAfAMSQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; t=1785322218; x=1785325818; bh=B
	lBB5Tx9flKCz2oovCEKGKaD1po58aAbOnrVH4uf10A=; b=RRJE3+i/qOZnMUNfT
	bi3sBX2WieHqJJeOQL1j6ssI5dtMk+LrPj9wPYRSb7aJUQnWHId15RKfs+R130jK
	YAw0foHpel28SUMgZZkcqu+jFdkiRLuLH7sl+/ntK8corukUQ11uos0IdacBospG
	I/+OQTdM+090WrdcbFE5QUxMI6vPTGY/zUeF+voUY9RLNT7ozzKkjtsP7CXZD0yR
	g6Z5A9TX9kBXl7pxI1rv7VFMzAkhzJgNrt2UM8hWgebKr2Z6fbNYNNRnhYJSu06L
	Wg00wq+WTWiyKij+B4V/JGVbfNSLZ984fCC066WiUU2SeCDdpRPx5ZMpRAPfAu80
	2hDcQ==
X-ME-Sender: <xms:6tppao2o-y3PyiTv-bVfpRln4-Oqm0rrBXvFgaSuDiEsYbud3PbrJQ>
    <xme:6tppatLR3qfxkZvkkUThUXyNB9t1PTxiqFf9jEzoQLrsVzkRRkBGKwZHXCQoDTd8v
    iId4nMnU4q2CnyWsNgNvCls-GTHwhLIpSZOGH7IrXD67CuXEOjCTgQ>
X-ME-Received: <xmr:6tppagxe1KdphYB_mYnvoxlMUzcuXcwt76Uhp59blpd-OL8aRDYk-197dtaYGsrrl4xxqjFEZQ>
X-ME-Proxy-Cause: dmFkZTGeswlYnKYh6CQ0L0l1tt4Z8DCWnp30X0BakgBv0ubXNyywU/HAyEZvX8cPnp7JSC
    UMc2nH+aXrBh8PCbFAMgr3JmQkCIV/Sm+XfcOIA9fWIWrUTEFBdjEpxFafOyF+zWyb2KN+
    RW+fLf/KxtmowJ1kCRQeVyGH2hvzOJp97Q8Rv60fCGomwqBSu8UYmcJOHrlEUNfuVDme8F
    FVQGJSRAFnBeYpaCrnm9Nc7ovWrcWn/0FX3v75qU7E9vbeDxTafWckNcNo3plYyKD97zhF
    ttoD8uk3Hu9Lb2XgYAWr/xb09As33pXPcM4WZxpSNKBA23izbfD7vAScZAxRGA+QnmoTZh
    Bw/AiNcT+s1PAoT/HAw+y38+I9GqTo8vOsZXoO6023IxSdkUmyVHofBHjtmIsA9BOVOeLp
    kyiLhSSBNRktek4FUnzMmn+mlfw+Oqw36ZyyDfZAGe1AWAbMPDPNR9xpPd7daCEoCILF7n
    ogUp4+40yHYO13K8s0lCyFLOthH2motn9J9bn6vQY9xvc9IQcVpDbDBx403YZE3fe0nt36
    uiVcqPayNoL74xqWR5wJyt81p3ibohWZhWu6F+iLegYJew2sQ2g0vLMTWabwxParM2j+k3
    84DQVNDi8+uOb63fdW54LnUY6sCGVMTys1lLTzH+VleTQ+s3ckgVhTZPWN2g
X-ME-Proxy: <xmx:6tppajXOY-vZ8Bcsqty2IQSO20YnDpPdQpBqXRMaz8XUJ3sUQNwqsA>
    <xmx:6tppaogoK4eGPzUArchpUJTEj8gVhb21FSisYDLDns8tvmolcdPnrQ>
    <xmx:6tpparCPExZAVSQx3bgpZHhKOM7Y80RhmVCphaNgeKA36--TQGrcSw>
    <xmx:6tppamvc6jcK7m6UaTnftANEUGxW8q8W3msujxcGHWROM8ZcjumfzA>
    <xmx:6tppajD2WhVfvuiYIF21f0W4FLBagDyft75n0i19Cd-S_FVIKPP1Qhns>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 29 Jul 2026 06:50:15 -0400 (EDT)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: royalnet026@gmail.com
Cc: tomeu@tomeuvizoso.net,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	Jiaxing Hu <gahing@gahingwoo.com>
Subject: Re: [PATCH] accel/rocket: request the core clocks by name
Date: Wed, 29 Jul 2026 22:50:13 +1200
Message-ID: <20260729105013.1255526-1-gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260729092939.118779-1-royalnet026@gmail.com>
References: <20260729072019.105907-1-royalnet026@gmail.com> <20260729092939.118779-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_035020_227660_445BB8A9 
X-CRM114-Status: GOOD (  13.53  )
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

Hi Igor,

Thanks for asking first rather than just sending it -- and for the way
you did it. Sending it standalone is the right call; it should not have
been sitting in my RFC.

The analysis matches what I see. devm_clk_bulk_get() calls
clk_get(dev, clks[i].id) per entry, and with a NULL id of_parse_clkspec()
never looks at "clock-names", so all four resolve to index 0. The ids and
their order match both the binding

  Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml
    clock-names: aclk, hclk, npu, pclk

and the in-tree DT (rk3588-base.dtsi, all three cores). It also mirrors
the core->resets[].id block right above it, so it reads consistently.

Reviewed-by: Jiaxing Hu <gahing@gahingwoo.com>

I can't give you a Tested-by: I don't have an RK3588 board at hand at the
moment. What I can say is that the same four assignments are board-tested
on RK3576 -- they are byte-for-byte the ones in my v2 6/8, running on a
ROCK 4D, where the NPU probes, powers up and down through runtime PM and
executes jobs. So between us the change has been exercised on two SoCs.

One thing I would put in the commit message, because it is a real
behaviour change and not obvious from the diff: before this, the four
requests resolved by index and therefore always succeeded, whatever the
DT said. After it they resolve by name, so a DT that does not carry all
four names now fails probe with -ENOENT instead of quietly working. That
is fine in-tree -- rk3588-base.dtsi has all four and the binding makes
clock-names required with exactly those items -- but it is worth a
sentence, particularly for the RK3568 series you mention: a DT there that
does not list all four names would go from silently working to not
probing at all, and that is a much easier failure to diagnose if the log
message says so.

On the rebase, your reading is right, with one correction: v3 is not out
yet. I have not posted it. When I do, that hunk shrinks to just the two
new CBUF ids (aclk_cbuf, hclk_cbuf) at clks[4] and clks[5] with
ARRAY_SIZE going to 6. Nothing of yours has to move either way.

On the iommu patches: confirmed, and it was Will who applied them
himself. Both are in linux-next as of next-20260727:

  841363ebb508 iommu/rockchip: Take all DT clocks
  b10d5920cafa iommu/rockchip: Clear stale page faults before enabling stall

Thanks again,
Jiaxing

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
