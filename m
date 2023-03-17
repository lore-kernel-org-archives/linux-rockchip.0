Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28191C74A5B
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Mar 2023 11:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5x5Plibnqs8fMiRqvgyR9GrO/RB89sfCOw8jPEN1Qdo=; b=5DArmtkNktWHIF
	TNFZ25dw3D2E47xe5q/v9TorQCC6w85wFZ+Uxv1Km5ey6f86iP0a+8aoTFfdHN+QJSq/F9aquGzhL
	yE/cAX1fb8JB3UKR62s/Pam1E6sh7h5eB3etZ08rJO9vTwrxjYyMiPmzpKE4T9mVA/1OG9B+KKYzi
	eZyQDRCv3YAmjz3/EpReV1aNjonA+fstUzIR+BG4GJrWfXs5AZEj8iVSu02z8WaOc+/gxgG6EB25j
	bJinN05kXdjs+GReHaygF5V6j26rLix5BFvzGQ/gCbasUrck7tvuMKGiFOMgA4KRsxQpnmX1Mu+4c
	JinkwuelithUH05Wx/Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pd8C0-0022i7-1F;
	Fri, 17 Mar 2023 11:24:16 +0000
Received: from mga05.intel.com ([192.55.52.43])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pd8Bx-0022hS-2K
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Mar 2023 11:24:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1679052253; x=1710588253;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ne+p3N8Ib99sku3IAtZqQTH9XpGJHwwTexAnxYXGCk8=;
  b=XMdWGKt4/Cg7mh54IcRBwHX9/Y9ptuVXjhTWZ9g+Z5br1IX9IaTZcfXe
   DkNZ7OA6mhOki91BQII7ZxBFqnYmgy0Cs+VN7K0Y2bgIUaukLGDEd2C9b
   uY7vEoWVKQyNx2wVOqTdlbI9kzHCOnHBowixb4DeANHcUeoMAxQL3Axbu
   LhIgy7RjdHF9wGr2CTzSpnlcX9mFfNKgPR+14bd2ihJzkETUC8sG5JnKg
   xtDhBAbo2KA1sJkPMniwEH7XgQBSDH9x51yFROehOK2vMK27gqH/kI52p
   jn5yMcXUmnzwDHy7mjQ24y5jhQRZS4I7aAbHUOSjFyZbVbC420mNdwJDx
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="424511071"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; 
   d="scan'208";a="424511071"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2023 04:24:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="823638591"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; 
   d="scan'208";a="823638591"
Received: from kuha.fi.intel.com ([10.237.72.185])
  by fmsmga001.fm.intel.com with SMTP; 17 Mar 2023 04:24:08 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation); Fri, 17 Mar 2023 13:24:07 +0200
Date: Fri, 17 Mar 2023 13:24:07 +0200
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Frank Wang <frank.wang@rock-chips.com>
Cc: linux@roeck-us.net, gregkh@linuxfoundation.org, heiko@sntech.de,
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, huangtao@rock-chips.com,
	william.wu@rock-chips.com, jianwei.zheng@rock-chips.com,
	yubing.zhang@rock-chips.com, wmc@rock-chips.com
Subject: Re: [PATCH 1/4] usb: typec: tcpm: fix cc role at port reset
Message-ID: <ZBRN11OwtkvXk1Hd@kuha.fi.intel.com>
References: <20230313025843.17162-1-frank.wang@rock-chips.com>
 <20230313025843.17162-2-frank.wang@rock-chips.com>
 <ZBA8Y/dbozOk2df7@kuha.fi.intel.com>
 <f0f0ac72-0a90-da9e-f686-49c21a76866b@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f0f0ac72-0a90-da9e-f686-49c21a76866b@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230317_042413_770310_AF1A67E5 
X-CRM114-Status: GOOD (  23.72  )
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

On Wed, Mar 15, 2023 at 10:55:20AM +0800, Frank Wang wrote:
> Hi Heikki,
> 
> On 2023/3/14 17:20, Heikki Krogerus wrote:
> > On Mon, Mar 13, 2023 at 10:58:40AM +0800, Frank Wang wrote:
> > > In the current implementation, the tcpm set CC1/CC2 role to open when
> > > it do port reset would cause the VBUS removed by the Type-C partner.
> > > 
> > > The Figure 4-20 in the TCPCI 2.0 specification show that the CC1/CC2
> > > role should set to 01b (Rp) or 10b (Rd) at Power On or Reset stage
> > > in DRP initialization and connection detection.
> > > 
> > > So set CC1/CC2 to Rd to fix it.
> > > 
> > > Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> > > ---
> > >   drivers/usb/typec/tcpm/tcpm.c | 2 +-
> > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
> > > index a0d943d785800..66de02a56f512 100644
> > > --- a/drivers/usb/typec/tcpm/tcpm.c
> > > +++ b/drivers/usb/typec/tcpm/tcpm.c
> > > @@ -4851,7 +4851,7 @@ static void run_state_machine(struct tcpm_port *port)
> > >   		break;
> > >   	case PORT_RESET:
> > >   		tcpm_reset_port(port);
> > > -		tcpm_set_cc(port, TYPEC_CC_OPEN);
> > > +		tcpm_set_cc(port, TYPEC_CC_RD);
> > >   		tcpm_set_state(port, PORT_RESET_WAIT_OFF,
> > >   			       PD_T_ERROR_RECOVERY);
> > >   		break;
> > Will this work if the port is for example source only?
> 
> Yeah, this only set at port reset stage and CC value will be set again
> (Rd for Sink, Rp_* for Source) when start toggling.

Okay. Let's wait for comments from Guenter.

thanks,

-- 
heikki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
