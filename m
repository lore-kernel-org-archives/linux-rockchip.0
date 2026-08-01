Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3B65C55171
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Aug 2026 03:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uv2dysTbXjrG624nDU/OdxUfhkvfiui1vydLbQxVhoE=; b=B3BZa/Z5YKAfL7
	nbubDZhH7lF/7RrAc1p4dhED8wb7UoXMXbLMTy3hKnvO8sHBgr43eJ4/9flF9CAEcNebAxstX6HIi
	gRA9YjRE7xFpw/UHJu/n3ojDULVU33j2bT47a7KbGSz/P+9MB3HlplWpPlo+cmwJ71JPaXSZObtZF
	bvqkOrudSIBrZxngKl+iN3TwRcgYHTdjBb1quS5Il9VV3yCSUBBbzI9NxCHnxaM8cnS8a6M96BrY0
	RgX0Rut9EhewH9dTxYhp8+DP015VC+rgomvBLJcErcKjcSP7y4U47WOAZ85+0NjBXlzrhM02EHufM
	lK8SZMwVJI83EFBxf0CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wq0WU-0000000Drzx-1WjU;
	Sat, 01 Aug 2026 03:36:30 +0000
Received: from flow-a2-smtp.messagingengine.com ([103.168.172.137])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wq0WQ-0000000DrzV-2tzH
	for linux-rockchip@lists.infradead.org;
	Sat, 01 Aug 2026 03:36:28 +0000
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailflow.phl.internal (Postfix) with ESMTP id 8CCAE138012B;
	Fri, 31 Jul 2026 23:36:22 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-03.internal (MEProxy); Fri, 31 Jul 2026 23:36:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1785555382; x=
	1785558982; bh=Kd/xtjrXL+ZSFGvvYxUao+0BEyM+qeVjXC70r8IO+a0=; b=o
	z86UqNDQeB62nnfqOmcNnf6aZ3eAairvn0RXbyK3m7QlPX2Rffmcozjefoxmivd8
	cn/0FwE6fmXfmpfmQ7daoqNkIWmY3NYsRlsMvxP0VBS5mpBxiN6rPK/MfORUXA+N
	ns142ECvekgIWt2586CJdOleQYQIkEuWmH+4vnvHO9RlMvE1lsdNTAAAYuEbkC3R
	3+Z10kHHzKDRqOP/ANtc4t04HcYSmN3WP+fS1u+NvPuO/ovJ8NkYNsplPN1/eI+h
	O32gLAj0qyYxF9Ml7BO1ZBhRiTRX/2VRGu2vJsNMWZP96C9bx70Tiq/mjIoJbaFo
	Mo7sKNQrfQL45LHeTfrzQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; t=1785555382; x=1785558982; bh=K
	d/xtjrXL+ZSFGvvYxUao+0BEyM+qeVjXC70r8IO+a0=; b=nQFXs9EW0XGKN3zf+
	jTriL0RUOVUli6tYYs2vouiAxYs2cceQdUPqEhKaMcWZsRt4y93p2JHAFCtkpfHf
	wyJ/9pDS4z8U0DIJcSK7IOKE978Q5HuMgpItGkQIaYperIRregmB1W0jlHMTzHSY
	gH/hZu/bhrpOQfN4SiQmNAwn7ENtY3R5ZsF62/ZLghYnMp0Nwrr/4TKp4/T3Icnn
	sL0KPRX0ZapLQYaRhbzafWTn/tOUO15DIKhZhycVffIx+9RrgYN9TOP8Yx9qBJDR
	SqZrpvOyf7e3EN6HX/+vQfzWC0+DIX/fK+ylzgQkiuJOG0mxr+qvEpaWaRj9vk+I
	v76AQ==
X-ME-Sender: <xms:tWltagHboP1KRtcreQLSKO4wk1UF3MB67l_Fvhve5p0oeXFEDq2rDg>
    <xme:tWltajaFeZcL9-bFpVDsN5yvyqtNdgx50X4TjutRmskAxVtF6rHBOjtqXzWbxkXZt
    Dgzu8u0MgryOwbil9E1U91jWZVPvyoP5sNCv8K1Ualkw5WjA5I66P8>
X-ME-Received: <xmr:tWltaqCXDsLaUgsAb_J0zDOM9QMdDhN76dJjJwwJLJk12FOzRuCT5yJAvyv_EhhQ5uj-m_m57A>
X-ME-Proxy-Cause: dmFkZTFGtZaGtXrwImdZSICG4DUqUu96tkJF0TuoMDWZLUDTN+ut1sbQE3D/S1YOvP7agd
    DagK4+sKjqjfOl9Dni90cOTdE7gDKtt1z+cYPOMi3+abEEFyaXJqk242pkBhUJmgbD8YAF
    M02plys25VQS9ULd0ZD9BWh0lB1k+/8yOpPh9BR4m/YNJ6aJLN/kzTB7SU0AZ+omYCa+bJ
    kUULTD2vflCE1P1O8N2urjEs0Q6bokgGb1/m9IRU+HsXZO4qX8KJWlRvrsx1AcX4SQ/kd+
    Wv5h2nNm3stWs/xwTO4vSBKDpp9JcZMq8lKUd3R4c8sLFnOPlrf27aICH0hLl6PAgOE2qx
    40Tshx/pWouUPk3C8l4dnX5kdA1pJ7k1D4+U3iSahIziJsATLg1q/tE7HpEs9Qwiipv5a6
    vTeC4VPQB7ELHgGANUuShSs3HKxQB59Ma3pT+pz1T2wYZtypY41OzZqOHebroWD99zm7aU
    tKv09I443qVoBraCWFhoLCVXomxHG1gSS7r1Vz/P1baPsxoit50lFCIbncViWmw24uUoyj
    yAR8Axk5yK4FwfPUCokn+GsSDHztBRKqWjEHfeuGnKbgN/gpCEH0lAjIUYxwMYPcP1nJ7m
    8kNEMLD6g4tdI0uZOFlw02AaYwD1sW7mnLiNkhX18FMFVt9HafiJkFyQHa+Q
X-ME-Proxy: <xmx:tWltajlKWdLGzSqjTVmVGCd6dw09uKpbVHAJxwyp1BwxaCsiPAfU6A>
    <xmx:tWltajyOzDatU1DiWTcloE-GCMRQTArVcvXiCsER3V3R1qAXA7CfWA>
    <xmx:tWltalSVG7mFOsrfvL7RcCSBKwDu9YvVpiM9POppAHzmoLSEiqtG2Q>
    <xmx:tWltaj-blkIaPSC2882DIxEOB4uNRHqUVqMHqSbLycShQDr8tpNH_A>
    <xmx:tmltasTxyDpeS7dAzvMcbWXwjwjou4Vcp74vAzupO6v0XGPdXZNRgkeQ>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 31 Jul 2026 23:36:18 -0400 (EDT)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: royalnet026@gmail.com
Cc: tomeu@tomeuvizoso.net,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	Jiaxing Hu <gahing@gahingwoo.com>
Subject: Re: [PATCH v2 2/2] accel/rocket: keep core slots stable across unbind and rebind
Date: Sat,  1 Aug 2026 15:36:14 +1200
Message-ID: <20260801033614.2008530-1-gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260731064933.12548-3-royalnet026@gmail.com>
References: <20260731064933.12548-1-royalnet026@gmail.com> <20260731064933.12548-3-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260731_203627_076434_969CCD09 
X-CRM114-Status: UNSURE (   5.09  )
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

Hi Igor,

All three are addressed, and in the right places. The .dev = NULL lands
in the rocket_core_init() failure path before num_cores is decremented,
which is what keeps the live slot count and the scheds allocation in
step. The .dev check in sched_to_core() and the note about synchronous
probe are both what I had in mind. Thanks for exercising the forced
init failure path on hardware too.

Reviewed-by: Jiaxing Hu <gahing@gahingwoo.com>

And thanks for the Tested-by on my v3. RK3588 is the part I cannot
check here, so having the soc_data conversion confirmed on all three
cores is worth a lot.

Cheers,
Jiaxing

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
