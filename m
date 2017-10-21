From: Diego Roversi <diegor-IWqWACnzNjyonA0d6jMUrA@public.gmane.org>
Subject: Re: rk3288 Firefly Reload: 'reboot' doesn't work
Date: Sat, 21 Oct 2017 16:02:00 +0200
Message-ID: <20171021160200.095b24b9eb1553f404fd9d5a@tiscali.it>
References: <b88abf6d-d95f-3eca-91d1-65fcb749cb22@xs4all.nl>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <b88abf6d-d95f-3eca-91d1-65fcb749cb22-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, 20 Oct 2017 11:06:21 +0200
Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org> wrote:

> Hi Heiko,
> 
> If I run 'reboot' to reboot my Firefly Reload board the last thing I see
> on the serial port is "reboot: Restarting system", but it never actually
> restarts.
> 

If I remember well, I was told that reboot was handled through watchdog timer. 


-- 
Diego Roversi <diegor-IWqWACnzNjyonA0d6jMUrA@public.gmane.org>
