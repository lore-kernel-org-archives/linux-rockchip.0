Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FCCEC77B73
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Apr 2023 08:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qQgbl7kFeFVjHxt3K686qqqpIZuyy9n9CG0VsR4nkJE=; b=04my4uVmWwm03A
	3VorJtpWDRkOq+5P77V49btK8qVnXjcskunRcXVYpl/kcMvgraB4Tec0NtUNDyzFKa7/lEbqJ674/
	jUFL7cEQuetPP1V7/iVa4eCzS0zyDC5/gmqS90d1mO5ygfG/G0Xi4Iq9z8djdtF8Y/4v6oKC0nCG7
	L3adulkaDA2HahHhPf4fsCUXVEGdxwMlxBiWIELaU+rPk2jkvSvooLjIIM5tDwiadjS3e3fsDXZnW
	JxrT2qoLBGixLv+Qm2VkWNSvS4IS6SObignfoTt02k7yXtKvnXXX0ccE+Ds5EujAcZ/S4GRFw3vVF
	ms6Y2hdA2EJUKRsGSDMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppPLr-007M70-2Q;
	Thu, 20 Apr 2023 08:09:11 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppPLo-007M6C-1q
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Apr 2023 08:09:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2735764155;
	Thu, 20 Apr 2023 08:09:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 911D1C433EF;
	Thu, 20 Apr 2023 08:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1681978147;
	bh=ImzOYmQ4yUAimeoREYTG/Ic4X9E0mCDibkc7vPhya5g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Gm2KDvefKPiwYxUSqqIQl5ioJOzO0AcVRlCaKwSP1rY1ZyadRI8dF/Ce3WkKJQRSs
	 Sc5BXlTLKFHYQwrzFGZOKgV2aR12u/kZ4Dw9hUXt8WZ8IAZh+a33VypEYXIwETMJT4
	 RtiSofNBctrEcmE2qu2FroRvVRTLpqw8hK4BzQmQ=
Date: Thu, 20 Apr 2023 10:08:59 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Frank Wang <frank.wang@rock-chips.com>, linux@roeck-us.net,
	heiko@sntech.de, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	huangtao@rock-chips.com, william.wu@rock-chips.com,
	jianwei.zheng@rock-chips.com, yubing.zhang@rock-chips.com,
	wmc@rock-chips.com
Subject: Re: [PATCH v2] usb: typec: tcpm: fix multiple times discover svids
 error
Message-ID: <ZEDzGydXbbpekeaB@kroah.com>
References: <20230316081149.24519-1-frank.wang@rock-chips.com>
 <ZBROkdOFAP4GPPU6@kuha.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZBROkdOFAP4GPPU6@kuha.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230420_010908_655113_04BC7BAF 
X-CRM114-Status: GOOD (  24.92  )
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

On Fri, Mar 17, 2023 at 01:27:13PM +0200, Heikki Krogerus wrote:
> On Thu, Mar 16, 2023 at 04:11:49PM +0800, Frank Wang wrote:
> > PD3.0 Spec 6.4.4.3.2 say that only Responder supports 12 or more SVIDs,
> > the Discover SVIDs Command Shall be executed multiple times until a
> > Discover SVIDs VDO is returned ending either with a SVID value of
> > 0x0000 in the last part of the last VDO or with a VDO containing two
> > SVIDs with values of 0x0000.
> > 
> > In the current implementation, if the last VDO does not find that the
> > Discover SVIDs Command would be executed multiple times even if the
> > Responder SVIDs are less than 12, and we found some odd dockers just
> > meet this case. So fix it.
> > 
> > Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> > ---
> >  drivers/usb/typec/tcpm/tcpm.c | 16 +++++++++++++++-
> >  1 file changed, 15 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
> > index 66de02a56f512..a3ae2c79f3540 100644
> > --- a/drivers/usb/typec/tcpm/tcpm.c
> > +++ b/drivers/usb/typec/tcpm/tcpm.c
> > @@ -1515,7 +1515,21 @@ static bool svdm_consume_svids(struct tcpm_port *port, const u32 *p, int cnt)
> >  		pmdata->svids[pmdata->nsvids++] = svid;
> >  		tcpm_log(port, "SVID %d: 0x%x", pmdata->nsvids, svid);
> >  	}
> > -	return true;
> > +
> > +	/*
> > +	 * PD3.0 Spec 6.4.4.3.2: The SVIDs are returned 2 per VDO (see Table
> > +	 * 6-43), and can be returned maximum 6 VDOs per response (see Figure
> > +	 * 6-19). If the Respondersupports 12 or more SVID then the Discover
> > +	 * SVIDs Command Shall be executed multiple times until a Discover
> > +	 * SVIDs VDO is returned ending either with a SVID value of 0x0000 in
> > +	 * the last part of the last VDO or with a VDO containing two SVIDs
> > +	 * with values of 0x0000.
> > +	 *
> > +	 * However, some odd dockers support SVIDs less than 12 but without
> > +	 * 0x0000 in the last VDO, so we need to break the Discover SVIDs
> > +	 * request and return false here.
> > +	 */
> > +	return cnt == 7;
> >  abort:
> >  	tcpm_log(port, "SVID_DISCOVERY_MAX(%d) too low!", SVID_DISCOVERY_MAX);
> >  	return false;
> 
> This is OK by men, but let's wait for Guenter.

What ever happened to this patch?

thanks,

greg k-h

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
