Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBC2ACCF9EB
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 17:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qHdXLTGGXM77hxWFFWwM6tN1PDYDLnhjfWBr0deRYs8=; b=IWeCYbcSBR9MR+
	O2RyLSpj4JKSwFXVEudUMkzCrU//9UMgt9sJAF5/kP1iAvSjMqDML318zXq4bd+6JzhVF7WAZOTIy
	7I2lLCCA3G8GKfNPfC8L4sXYhbn3yBwBu5NMWPq6eL4Net20mpnNkDPFiGWAlsHs932TKNclm/poo
	j6p80p/AWNHQFLsrdtOQVUOlqhSg1mszFvsYi98V8h2MdD10weVBhr4RuB+mE3cI8n/M+PLJhbaiE
	XQYI+PRVLou+p9BR3HZ3u5nSPyXng6kpovPIqKUmO6rQGvPv8lBNR5pcPyO/5HRJhuBxmSYg/H/IY
	uFe5NGlRoV3MCwJb2eOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDQm6-0000000EPP4-26BI;
	Mon, 27 Oct 2025 17:12:54 +0000
Received: from mo4-p01-ob.smtp.rzone.de ([81.169.146.166])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDQm3-0000000EPOQ-0fwD
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Oct 2025 17:12:52 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1761585147; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=iSFk4OiuvL8e8Pzfi5fiJdD+jKLneJKnfcb8lL0E4JI+uUuy1Dc59tRlf7grT56CJT
    hlPyr8x6uZ9wvbSOB80yDuVVNpWPf4RkOI4kEHnhoidJqSTf6lcfnpf2ukt+tGQxLoYD
    jeZHGQAPVFmGHiRKMmDsblVWgAJyx7vw4VSzqeR/pQRqrn7uYmmbftwgSFZrdv8iWXVC
    q9iagLSBh/HqG87tvPHzK1HxVjARZXcw2DcBJRUVGEqqsMv5neueDvzNNjkuNxU9uQDK
    nLmu46nl0yqeqNQ2r84soFghuhnQVwfpksSAIrk3BdwpuS+oSO4KhL47VjNfkgFYLOcZ
    W65A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1761585147;
    s=strato-dkim-0002; d=strato.com;
    h=In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Cc:Date:
    From:Subject:Sender;
    bh=13Eh27o4UqsOQ34xi8S2wPYjOon2zusfqlo4MpiYA2k=;
    b=cc/uHztL9qfmFGxvFRvXRx9jH9UoYtEnUjx4QioYc9Nt13EoyGJqXMHwJhZW/c/JBy
    X7ZHV8VNKQOezLsU6FCNK3UwxfL2RYp78dhXRQM4/hYjbZ+JyEQoqN721lE0Y0ZAG8rn
    93yzMW8gXVidoAQpQ03pbFb94doSwTvzsKT+lmBSa7jdOFJrAAMliXK58sJ4BlL7yLxS
    B2jXtAnT37s5BV0a8Rq+F5K4CavuJubSleN7dQC/3g33mRoSfFLweLgrAiCC9mH/FZTj
    Dz2CY4Xdpd4qVm8kDuOxT20SSQJjDWApdzGH5m/o+6JwVR3tx6C/x8A1PG6SQDeeHJej
    hrOA==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1761585147;
    s=strato-dkim-0002; d=xenosoft.de;
    h=In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Cc:Date:
    From:Subject:Sender;
    bh=13Eh27o4UqsOQ34xi8S2wPYjOon2zusfqlo4MpiYA2k=;
    b=SL0hpBWp9K5XPn08SzhMWLoaM3HAMUicwwKckYD30tB43wSmf3e8dn4uXATn4kLlPh
    RZFVde1tdkEbWD+9/aFM65RhN1Oqlqj05eOTEj9gSBl/M98fgVd+6XZsb0Zt1ThPhoCQ
    GUh74HjFHdCj0MPQH9fmMCbFi4+qh+dWi/rzHqyXWIlf++BrJwg7nn0b+X6/cvMo865i
    IrQAEjPI50xpcmTl6TnDQTjpmFXwN9hw0JZ7DwMombbaCRVOjr0+IL53zlOMl2dD7XRw
    uFWbnY0UPYH0sfXJE1+4QJ6bxd7tlG2hHGjlQL9JBnyyEtbYDgBh9tMmJyoaqnKLVawI
    Y7VQ==
X-RZG-AUTH: ":L2QefEenb+UdBJSdRCXu93KJ1bmSGnhMdmOod1DhGN0rBVhd9dFr4thIFiqT9BURIy+l7Rng"
Received: from [192.168.178.48]
    by smtp.strato.de (RZmta 53.4.2 DYNA|AUTH)
    with ESMTPSA id e2886619RHCPBv7
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Mon, 27 Oct 2025 18:12:25 +0100 (CET)
Message-ID: <3aa95b26-7801-476e-840f-5976b0ee11c1@xenosoft.de>
Date: Mon, 27 Oct 2025 18:12:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH] PCI/ASPM: Enable only L0s and L1 for devicetree platforms
To: Bjorn Helgaas <helgaas@kernel.org>, Johan Hovold <johan@kernel.org>
Cc: linux-pci@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
 FUKAUMI Naoki <naoki@radxa.com>, Herve Codina <herve.codina@bootlin.com>,
 Diederik de Haas <diederik@cknow-tech.com>, Dragan Simic
 <dsimic@manjaro.org>, linuxppc-dev@lists.ozlabs.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Frank Li <Frank.li@nxp.com>, "R.T.Dickinson" <rtd2@xtra.co.nz>,
 mad skateman <madskateman@gmail.com>, hypexed@yahoo.com.au
References: <20251024203924.GA1361677@bhelgaas>
Content-Language: de-DE
From: Christian Zigotzky <chzigotzky@xenosoft.de>
In-Reply-To: <20251024203924.GA1361677@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_101251_418442_8AF63542 
X-CRM114-Status: UNSURE (   4.90  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi All,

I activated CONFIG_PCIEASPM and CONFIG_PCIEASPM_DEFAULT again for the 
RC3 of kernel 6.18. Unfortunately my AMD Radeon HD6870 doesn't work with 
the latest patches.

But that doesn't matter because we disable the above kernel options by 
default. We don't need power management for PCI Express because of boot 
issues and performance issues.

Cheers,
Christian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
