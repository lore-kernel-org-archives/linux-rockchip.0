Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB74A606A330
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2026 08:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=KxHsJfVO;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=MZNb+TWs
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=lhc4sD53gjbx5TwfoMKA9OAe9TfXEZkWiJ99Tamw6Io=; b=KxHsJfVO0fHzW7ZHN8vRCxxofH
	5QmlnSy5LG14aLV0VGqoaBWR2DRzHCJi0MuzZEEhZVKB2ytKhe4I6tVs+xELQIIro2pCF79Ik9G8o
	f3BgRdWzzp8Svo5N5ButCoH1qY28NZBQrE6KCir2LA9yb+QmmV+FmhJuI6N18EeiJgWadQ1by6qrb
	3NbbxvYurLol/ktbusoJAurIpbhVXJs8ME0Mui0dxv9OoxhAamnLhnLl1E6q7ZOSzAAm/HslxZX5a
	o32Ugo+EVtqXx3jyOP5b1Zj1y+7q5XpNbc4P0EN7ISSkqSCcUHH+ZQQVxXJ9gYEjvaB+MPeykaLo3
	vIaobK1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTx7O-0000000B8W0-2NYk;
	Thu, 19 Nov 2026 08:03:42 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTx7L-0000000B8Uo-0jAZ
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Nov 2026 08:03:41 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-6b85b58d303so429498a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Nov 2026 00:03:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795075417; cv=none;
        d=google.com; s=arc-20260327;
        b=KR0Ru3q5L3mTRpHIXup2j+hEp4ID9KlPYq4NjvClG9yQNm5ZpPrGwMQqcF8cSyQ/yl
         asnHBvtzUdZmtLKYK6cIhGxLdXNl+4qKr20DXBYup3uN3YDeoax9mJTlwyWjRL1jfwKH
         pTmYqIqe0hcGeQ46SpDry5bEiD7dyAAhrUijk6I9sHKKl2rlwja9m3bsJqUyHUV/DRZT
         F2PPh5yfDGKGYnp+c/je7XwKyD/Dq8sGdiYU8ByeVX//c9l4pr8gUDFNl0saVNJRkOHn
         +uULWcZuku5ZgHkwFsY1MRxkXETv71oFybPojUD1bN7I6zkkqxysQf4j+W72uY1JcIEy
         dSHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4zyWgbXx4Q5+0M3EcfdpGNiWN2ml7oLzqm2D2qT58oE=;
        fh=IyLWuwwds8wxfX78IGSQeNhpHw1aOwtaiPuvcFCBb6A=;
        b=WhWi3IuWlVzfmImF8Qof0td/IItnVb84VYsc/ujFFHM0K3We+XjK72icDaIU9SXSEl
         /n2GBx6SKwbIdm4MUq0olp3ckcgyuwnj252CSPSsVK9he0//t50fUkFphTrCgpZjqouK
         IEnjApdCvtYLTYVx7Dsj1LCY9oAX+DNYaAKOoFYlk9edcD43RBnJ02zP1QAmzHi87gDi
         4QVipQDlGhVZu+a+5kaI9zdlB9Velq5+WgrjZEf6uETp/NnbbvlCcqJbhLPeMQP0G+0V
         n2MUgw/xRq7UYIWRhdQdHfbxq93nJgNB2H5+fL73p1kenTCGgn7lbpYa8UF8c5ft/J95
         PVyA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795075417; x=1795680217; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4zyWgbXx4Q5+0M3EcfdpGNiWN2ml7oLzqm2D2qT58oE=;
        b=MZNb+TWsfOfTrQFmwzp0AMkODA5jfCOxHoXwCegBIm9TdDDCNSH6hhh1qBnKmZc5w2
         CYcosh3UnuyaF8NtDgwJG+4dVvQDWROHnb/RYpebAYtsX0xP7ZHZ+mxbLIKI0bU0De7Y
         ojUI5/N0v1TiaUQktyx6kiy+G6DqGdVYs5AJrbfyTdjlHCPsJoTbfXoIkCW1M8LEWT6l
         mH6t8WtxOHGUXq5ue5FEptqDzAN0MkJyCsN3v96XvbkSLTX7ea3043R1DmnYdwnZdFHH
         sNyNXOuOMqnxx9ksnl5kE+JKEhqrmre0BMj2/rGGXGX3Vg7DJX8w9bSBPwSL6evGi3qO
         mxPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795075417; x=1795680217;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=4zyWgbXx4Q5+0M3EcfdpGNiWN2ml7oLzqm2D2qT58oE=;
        b=TDawfvvNs5Va+Y1/8SeUrgBJtFHqUSSTsbd8/lU1Bg2f5lk5s7CcPQamn7EJctVI/b
         4h0eElabEZ/Pjn3Ad4qqjmyGRQqCy1+5cz1uj+i6OoLEGXSJDtdDVzAmORhy9AbuuGsa
         S8OFwIEMHJgjZTo1IdtRWlpOkwI8DPszf1k/iKBNo+3XYXBuXw0QIBN3q6Ko9sSdM+wr
         0zqkz233CpDV9o2v6919f8VbJj49IIxe8UxYS9VsNUqZBix953qxSpC5UugvQ7yOm6Yi
         QhOEv5d1nKWI0ipMDfJnDMKFJw7x7RNu2+MvWOoLJUqOprNvLAvAPYwUBwVzRTAKOP6n
         lg6g==
X-Forwarded-Encrypted: i=1; AL+hErG0bSj4X44mjPnXRpJQoZpqJ2fFuqXnozYsTURUv85Vd7Y+EIhvCXFSfMaAfi14BgaVtARfzFMwTNhF5Q+5Iw==@lists.infradead.org
X-Gm-Message-State: APuU4Z+oTARC+Dan/CcegXFpQvWNrsYXR+/1bMdzvmmqQMVB/ZIh5rvi
	i//a7RcFVC0DBS9VjjckHhKu+uxgvqVJ3ybEPkkIvyujsx9eHc7Y1HPjrwjcycdObEOe6dpgAwI
	olrgdXNK596KZHyTl+YAWa1hinxR4Gyo=
X-Gm-Gg: AYBFou1bRCwgvGaaXR/nyspcuW4ImRWtLcwUjwaWzrCj8wMa2RDwmhe2a2CQoQHCKPp
	pAV5wzZikrlOvSrzjxxYz2dC1PpBzqoWPGfDCmlTETWuMEjLtIyjgIBnDMYxckOQa/RN8fVoSyC
	YsE+XoSQohEvt6iFeGlTHla0GKU8NI8jxJyCVeJxZw9q924RaKbXp+BUDAtM1jvimCyOhkKZ76Q
	Lqz56VfEmj3/DdF8wYmllpOvpedSk118AWEpIz2BfcaJ9Y2BdzB8DADfTTjHD7JkS8zD2BiYbVH
	eT6sJB0xz1Zh60K+W3ZOdJ/Q+OxvkQo6OAfcPtR6S+55Ef7Z5dDbFI01Q1H25WncOeRJ7UanN2J
	yij1ZFtLdTBrjavAw/WbqrYqxsTtEyqZ4pt0=
X-Received: by 2002:a05:6402:c51b:10b0:6ba:12d7:69b1 with SMTP id
 4fb4d7f45d1cf-6ba1f9ad159mr266992a12.12.1795075416554; Thu, 19 Nov 2026
 00:03:36 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261119-b4-rockchip-pcie-hib-v1-1-05df24cc77e6@iav.lv>
 <CANAwSgRaHubdh8o5Zd3k5Sa_jf5fWuEuCXqbQu7gGL71MwC+8g@mail.gmail.com> <20261119-re-anand-rockchip-hib-rails@iav.lv>
In-Reply-To: <20261119-re-anand-rockchip-hib-rails@iav.lv>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 19 Nov 2026 13:33:19 +0530
X-Gm-Features: AclHuK8PCuggsZEUPGrild3UXx1VS_EuxaX_wfHV2ilz6neGEig8c1iMSX4XEY4
Message-ID: <CANAwSgSs75e6ACaP-bw_JGJ1=VrMGmvduDCx6HMhXSmLsOJddg@mail.gmail.com>
Subject: Re: [PATCH] PCI: rockchip-host: Support hibernation with endpoints in D0
To: Igor Velkov <iav@iav.lv>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Manivannan Sadhasivam <mani@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org, 
	Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_000339_238007_36C05788 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Igor,

On Thu, 19 Nov 2026 at 11:54, Igor Velkov <iav@iav.lv> wrote:
>
> On Thu, 19 Nov 2026, Anand Moon wrote:
> > It looks like we aren't disabling all the PCIe regulators (0.9V, 1.8V,
> > 3.3V, and 12V)
> > during suspend and re-enabling them during resume.
> > Shouldn't we power down all of them on suspend and bring them back up on resume?
>
> This patch keeps the rails as they are: suspend_noirq() already turns
> off only vpcie0v9, and the other rails stay on from probe to remove.
> The 3.3 V and 12 V rails power the endpoint; cutting them in suspend
> loses the state that the PCI core and the endpoint driver expect to
> keep in D3hot. Doing that would be a separate change.
>
Makes sense. Thanks
I will check the disable and enable regulators to help with this issue
and will update you.
> --
> Igor Velkov <iav@iav.lv>

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
