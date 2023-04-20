Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F04E1C77B72
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Apr 2023 08:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gKuJl7WR8FXK8sRnyJpVnl7TOQu/0B58kMR29ZniOn4=; b=qdpRfd4HI0SYgY
	L1KzJR/WG07ry5mwKVe29g7hEBdvCeavpRZWjmf11M6xFgzv0pa5rJVf6eDGRpIsmganTwbG0UqRH
	Vo6w6an2hsSzTCNBYRvmc5NMTY3Q4YZAB4xa638HSScXR3bJjFHDwCbpLnhmvuWOzFj1JdIQMg0PR
	NRVAZnSJmB4rPrpZ1DkIEjycisEzFppIQnpEhhd652NtyfEXiDYFfgtLDSd4zPE3MUzQSGULpZxbV
	l4bmFbWOLj5t5flZV2maX42Lr2S5ZxjcqjCzf7AUv4UXQWGSzlLGJRLxWSnSaXQ4EQsYLETprJA9r
	KKyzLzIxCPIEa/F+r+qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppPXU-007O7Z-1U;
	Thu, 20 Apr 2023 08:21:12 +0000
Received: from mga04.intel.com ([192.55.52.120])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppPXS-007O6p-1B
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Apr 2023 08:21:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1681978870; x=1713514870;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=4/conQ/6kczdzx/+dtomCs4WTfQIoGhLLwAeEZdDT40=;
  b=ciooCsbgY3/Lc5GRuwbg8T1QUtE+DPgypmjHHj/oJ8oc2Otm4jbggFHI
   b2B61nFJtSMxvXCDxoHDlkn6BJFCBQIfZWwpUBClsZ6jQwuV+5nmOLPQN
   WGm9NIniTnLl30MJD3vVbj5jukdYrzTtsfnlq4hOWz//KxB1xB4/ElG43
   g17+E6ZVR4TyE8UhFFgNqoq0KXMZsYwIsXPEachcChOjgT/IX2jxtuLBW
   TtgWfjeLQgpznjBlnl32/lF5CUIbZ1SZxBRrOzuiUqFLoHI8Rrbx0H5v7
   d29FOITpfJYfN+ydq2ixLfrsT72QGHrNJdeQ4vWQK/K0f9jmJLjrjIPEF
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="344425650"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; 
   d="scan'208";a="344425650"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Apr 2023 01:21:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="835631405"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; 
   d="scan'208";a="835631405"
Received: from kuha.fi.intel.com ([10.237.72.185])
  by fmsmga001.fm.intel.com with SMTP; 20 Apr 2023 01:21:00 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation); Thu, 20 Apr 2023 11:20:58 +0300
Date: Thu, 20 Apr 2023 11:20:58 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Frank Wang <frank.wang@rock-chips.com>, linux@roeck-us.net,
	heiko@sntech.de, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	huangtao@rock-chips.com, william.wu@rock-chips.com,
	jianwei.zheng@rock-chips.com, yubing.zhang@rock-chips.com,
	wmc@rock-chips.com
Subject: Re: [PATCH v2] usb: typec: tcpm: fix multiple times discover svids
 error
Message-ID: <ZED16m8B1K+7sdJK@kuha.fi.intel.com>
References: <20230316081149.24519-1-frank.wang@rock-chips.com>
 <ZBROkdOFAP4GPPU6@kuha.fi.intel.com>
 <ZEDzGydXbbpekeaB@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZEDzGydXbbpekeaB@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230420_012110_415030_A7F9A2FC 
X-CRM114-Status: GOOD (  27.48  )
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

On Thu, Apr 20, 2023 at 10:08:59AM +0200, Greg KH wrote:
> On Fri, Mar 17, 2023 at 01:27:13PM +0200, Heikki Krogerus wrote:
> > On Thu, Mar 16, 2023 at 04:11:49PM +0800, Frank Wang wrote:
> > > PD3.0 Spec 6.4.4.3.2 say that only Responder supports 12 or more SVIDs,
> > > the Discover SVIDs Command Shall be executed multiple times until a
> > > Discover SVIDs VDO is returned ending either with a SVID value of
> > > 0x0000 in the last part of the last VDO or with a VDO containing two
> > > SVIDs with values of 0x0000.
> > > 
> > > In the current implementation, if the last VDO does not find that the
> > > Discover SVIDs Command would be executed multiple times even if the
> > > Responder SVIDs are less than 12, and we found some odd dockers just
> > > meet this case. So fix it.
> > > 
> > > Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> > > ---
> > >  drivers/usb/typec/tcpm/tcpm.c | 16 +++++++++++++++-
> > >  1 file changed, 15 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
> > > index 66de02a56f512..a3ae2c79f3540 100644
> > > --- a/drivers/usb/typec/tcpm/tcpm.c
> > > +++ b/drivers/usb/typec/tcpm/tcpm.c
> > > @@ -1515,7 +1515,21 @@ static bool svdm_consume_svids(struct tcpm_port *port, const u32 *p, int cnt)
> > >  		pmdata->svids[pmdata->nsvids++] = svid;
> > >  		tcpm_log(port, "SVID %d: 0x%x", pmdata->nsvids, svid);
> > >  	}
> > > -	return true;
> > > +
> > > +	/*
> > > +	 * PD3.0 Spec 6.4.4.3.2: The SVIDs are returned 2 per VDO (see Table
> > > +	 * 6-43), and can be returned maximum 6 VDOs per response (see Figure
> > > +	 * 6-19). If the Respondersupports 12 or more SVID then the Discover
> > > +	 * SVIDs Command Shall be executed multiple times until a Discover
> > > +	 * SVIDs VDO is returned ending either with a SVID value of 0x0000 in
> > > +	 * the last part of the last VDO or with a VDO containing two SVIDs
> > > +	 * with values of 0x0000.
> > > +	 *
> > > +	 * However, some odd dockers support SVIDs less than 12 but without
> > > +	 * 0x0000 in the last VDO, so we need to break the Discover SVIDs
> > > +	 * request and return false here.
> > > +	 */
> > > +	return cnt == 7;
> > >  abort:
> > >  	tcpm_log(port, "SVID_DISCOVERY_MAX(%d) too low!", SVID_DISCOVERY_MAX);
> > >  	return false;
> > 
> > This is OK by men, but let's wait for Guenter.
> 
> What ever happened to this patch?

I wanted to wait for Guenter's review, but FWIW:

Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

thanks,

-- 
heikki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
